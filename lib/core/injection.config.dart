// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mentorship_4/core/cubit/locale_cubit.dart' as _i929;
import 'package:mentorship_4/core/netwrok/api_services.dart' as _i42;
import 'package:mentorship_4/core/netwrok/dio_service.dart' as _i134;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i929.LocaleCubit>(() => _i929.LocaleCubit());
    gh.singleton<_i134.DioService>(() => _i134.DioService());
    gh.factory<_i42.ApiServices>(
      () => _i42.ApiServices(gh<_i134.DioService>()),
    );
    return this;
  }
}
