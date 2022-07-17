// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/datasources/login_local_datasource.dart'
    as _i6;
import '../../features/auth/data/datasources/login_remote_datasource.dart'
    as _i11;
import '../../features/auth/data/repositories/login_repository_impl.dart'
    as _i13;
import '../../features/auth/domain/repositories/login_repository.dart' as _i12;
import '../../features/auth/presentation/blocs/user_login/login_cubit.dart'
    as _i23;
import '../../features/common/presentation/blocs/auth_cubit.dart' as _i20;
import '../../features/common/router/app_router.gr.dart' as _i3;
import '../../features/home/games/data/datasources/games_remote_datasource.dart'
    as _i10;
import '../../features/home/games/data/repositories/games_repository_impl.dart'
    as _i22;
import '../../features/home/games/domain/repositories/games_repository.dart'
    as _i21;
import '../../features/home/games/presentation/bloc/games_cubit.dart' as _i26;
import '../../features/home/players/data/datasources/players_remote_datasource.dart'
    as _i14;
import '../../features/home/players/data/repositories/players_repository_impl.dart'
    as _i16;
import '../../features/home/players/domain/repositories/players_repository.dart'
    as _i15;
import '../../features/home/players/presentation/bloc/players_cubit.dart'
    as _i24;
import '../../features/tictactoe/data/datasources/tictactoe_datasource.dart'
    as _i17;
import '../../features/tictactoe/data/repositories/tictactoe_repository_impl.dart'
    as _i19;
import '../../features/tictactoe/domain/repositories/tictactoe_repository.dart'
    as _i18;
import '../../features/tictactoe/presentation/bloc/tictactoe_cubit.dart'
    as _i25;
import '../network/api_client.dart' as _i9;
import '../network/interceptors/header_interceptor.dart' as _i5;
import '../network/network_info.dart' as _i7;
import 'modules/db_module.dart' as _i28;
import 'modules/network_module.dart' as _i29;
import 'modules/router_module.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i9.ApiClient>(
      () => networkModule.apiClient(get<_i8.Dio>()));
  gh.factory<_i10.GamesRemoteDataSource>(() =>
      _i10.GamesRemoteDataSourceImpl(restClientService: get<_i9.ApiClient>()));
  gh.factory<_i11.LoginRemoteDataSource>(() =>
      _i11.LoginRemoteDataSourceImpl(restClientService: get<_i9.ApiClient>()));
  gh.factory<_i12.LoginRepository>(() => _i13.LoginRepositoryImpl(
      remoteDataSource: get<_i11.LoginRemoteDataSource>(),
      localDataSource: get<_i6.LoginLocalDataSource>(),
      networkInfo: get<_i7.NetworkInfo>()));
  gh.factory<_i14.PlayersRemoteDataSource>(() =>
      _i14.PlayersRemoteDataSourceImpl(
          restClientService: get<_i9.ApiClient>()));
  gh.factory<_i15.PlayersRepository>(() => _i16.PlayersRepositoryImpl(
      remoteDataSource: get<_i14.PlayersRemoteDataSource>(),
      loginRepository: get<_i12.LoginRepository>(),
      networkInfo: get<_i7.NetworkInfo>()));
  gh.factory<_i17.TictactoeRemoteDataSource>(() =>
      _i17.TictactoeRemoteDataSourceImpl(
          restClientService: get<_i9.ApiClient>()));
  gh.factory<_i18.TictactoeRepository>(() => _i19.TictactoeRepositoryImpl(
      get<_i7.NetworkInfo>(),
      get<_i17.TictactoeRemoteDataSource>(),
      get<_i12.LoginRepository>()));
  gh.factory<_i20.AuthCubit>(() => _i20.AuthCubit(get<_i12.LoginRepository>()));
  gh.factory<_i21.GamesRepository>(() => _i22.GamesRepositoryImpl(
      remoteDataSource: get<_i10.GamesRemoteDataSource>(),
      loginRepository: get<_i12.LoginRepository>(),
      networkInfo: get<_i7.NetworkInfo>()));
  gh.factory<_i23.LoginCubit>(
      () => _i23.LoginCubit(get<_i12.LoginRepository>()));
  gh.factory<_i24.PlayersCubit>(
      () => _i24.PlayersCubit(get<_i15.PlayersRepository>()));
  gh.factory<_i25.TictactoeCubit>(
      () => _i25.TictactoeCubit(get<_i18.TictactoeRepository>()));
  gh.factory<_i26.GamesCubit>(
      () => _i26.GamesCubit(get<_i21.GamesRepository>()));
  return get;
}

class _$RegisterModule extends _i27.RegisterModule {}

class _$StorageModule extends _i28.StorageModule {}

class _$NetworkModule extends _i29.NetworkModule {}
