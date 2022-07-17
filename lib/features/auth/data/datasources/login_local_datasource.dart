import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/features/auth/common/auth_constants.dart';

import '../../../../core/di/di_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../../../auth/domain/entities/user_model.dart';

abstract class LoginLocalDataSource {
  Future<String> getToken();

  Future<void> cacheToken(String token);

  Future<UserModel> getUser();

  Future<void> cacheUser(UserModel userModel);

  Future<void> clearStorage();
}

@Injectable(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl extends LoginLocalDataSource {
  final FlutterSecureStorage storage;

  LoginLocalDataSourceImpl({
    required this.storage,
  });

  @override
  Future<void> cacheToken(String token) {
    return storage.write(key: AuthConstants.cachedToken, value: token);
  }

  @override
  Future<String> getToken() async {
    String? token = await storage.read(key: AuthConstants.cachedToken);
    if (token == null) {
      throw TokenNotFoundException();
    }
    return Future.value(token);
  }

  @override
  Future<void> cacheUser(UserModel userModel) async {
    var openBox = await _getUserModelBox();
    return openBox.put(hiveUserKey(), userModel);
  }

  @override
  Future<UserModel> getUser() async {
    var openBox = await _getUserModelBox();
    UserModel? user = openBox.get(hiveUserKey());
    if (user == null) throw UserNotFoundException;
    return user;
  }

  Future<Box<UserModel>> _getUserModelBox() async {
    return await Hive.openBox<UserModel>(DiConstants.hiveBoxName);
  }

  @override
  Future<void> clearStorage() async {
    await clearToken();
    await clearUser();
  }

  Future<void> clearToken() async {
    await storage.delete(key: AuthConstants.cachedToken);
  }

  Future<void> clearUser() async {
    var openBox = await _getUserModelBox();
    openBox.clear();
  }
}
