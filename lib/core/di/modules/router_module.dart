import 'package:injectable/injectable.dart';

import '../../../features/common/router/app_router.gr.dart';

@module
abstract class RegisterModule {
  @singleton
  AppRouter get router => AppRouter();
}
