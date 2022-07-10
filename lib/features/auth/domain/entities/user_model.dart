import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel {
  UserModel({required this.username, required this.id});

  @HiveField(0)
  String username;

  @HiveField(1)
  int id;
}

String hiveUserKey() => "userModelKey";
