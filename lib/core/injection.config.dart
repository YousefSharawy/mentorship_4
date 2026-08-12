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
import 'package:mentorship_4/core/storage/app_storage.dart' as _i719;
import 'package:mentorship_4/core/storage/storage_module.dart' as _i302;
import 'package:mentorship_4/feature/onboarding/viewmodel/cubit/onboarding_cubit.dart'
    as _i626;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storageModule = _$StorageModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i929.LocaleCubit>(() => _i929.LocaleCubit());
    gh.singleton<_i134.DioService>(() => _i134.DioService());
    gh.factory<_i719.AppStorage>(
      () => _i719.AppStorage(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i42.ApiServices>(
      () => _i42.ApiServices(gh<_i134.DioService>()),
    );
    gh.factory<_i626.OnboardingCubit>(
      () => _i626.OnboardingCubit(gh<_i719.AppStorage>()),
    );
    return this;
  }
}

class _$StorageModule extends _i302.StorageModule {}
