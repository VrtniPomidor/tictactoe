// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/common/presentation/blocs/auth_cubit.dart' as _i13;
import '../../features/common/router/app_router.gr.dart' as _i3;
import '../../features/login/data/datasources/login_local_datasource.dart'
    as _i6;
import '../../features/login/data/datasources/login_remote_datasource.dart'
    as _i10;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i12;
import '../../features/login/domain/repositories/login_repository.dart' as _i11;
import '../../features/login/presentation/blocs/user_login/login_cubit.dart'
    as _i14;
import '../network/api_client.dart' as _i9;
import '../network/interceptors/header_interceptor.dart' as _i5;
import '../network/network_info.dart' as _i7;
import 'modules/db_module.dart' as _i16;
import 'modules/network_module.dart' as _i17;
import 'modules/router_module.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final storageModule = _$StorageModule();
  final networkModule = _$NetworkModule();
  gh.singleton<_i3.AppRouter>(registerModule.router);
  await gh.factoryAsync<_i4.FlutterSecureStorage>(() => storageModule.prefs,
      preResolve: true);
  gh.factory<_i5.HeaderInterceptor>(() => _i5.HeaderInterceptor());
  gh.factory<_i6.LoginLocalDataSource>(() =>
      _i6.LoginLocalDataSourceImpl(storage: get<_i4.FlutterSecureStorage>()));
  gh.factory<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl());
  gh.factory<String>(() => networkModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i8.Dio>(
      () => networkModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i9.ApiClient>(() => networkModule.apiClient(
      get<_i8.Dio>(), get<String>(instanceName: 'baseUrl')));
  gh.factory<_i10.LoginRemoteDataSource>(() =>
      _i10.LoginRemoteDataSourceImpl(restClientService: get<_i9.ApiClient>()));
  gh.factory<_i11.LoginRepository>(() => _i12.LoginRepositoryImpl(
      remoteDataSource: get<_i10.LoginRemoteDataSource>(),
      localDataSource: get<_i6.LoginLocalDataSource>(),
      networkInfo: get<_i7.NetworkInfo>()));
  gh.factory<_i13.AuthCubit>(() => _i13.AuthCubit(get<_i11.LoginRepository>()));
  gh.factory<_i14.LoginCubit>(
      () => _i14.LoginCubit(get<_i11.LoginRepository>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}

class _$StorageModule extends _i16.StorageModule {}

class _$NetworkModule extends _i17.NetworkModule {}
