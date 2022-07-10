import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/features/login/common/login_constants.dart';
import 'package:tictactoe/features/login/domain/entities/user_model.dart';

import '../../../../core/di/di_constants.dart';
import '../../../../core/error/exceptions.dart';

abstract class LoginLocalDataSource {
  Future<String> getToken();

  Future<void> cacheToken(String token);

  Future<UserModel> getUser();

  Future<void> cacheUser(UserModel userModel);
}

@Injectable(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl extends LoginLocalDataSource {
  final FlutterSecureStorage storage;

  LoginLocalDataSourceImpl({
    required this.storage,
  });

  @override
  Future<void> cacheToken(String token) {
    return storage.write(key: LoginConstants.cachedToken, value: token);
  }

  @override
  Future<String> getToken() async {
    String? token = await storage.read(key: LoginConstants.cachedToken);
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
}
