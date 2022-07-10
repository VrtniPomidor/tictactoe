import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_init.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => $initGetIt(getIt);
