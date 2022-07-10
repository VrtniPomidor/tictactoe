import 'package:hive_flutter/hive_flutter.dart';

import '../../features/login/domain/entities/user_model.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
}
