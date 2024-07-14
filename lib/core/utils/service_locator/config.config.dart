// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/all_product_feature/data/remote/data_sources/all_product_remotedatasource.dart'
    as _i4;
import '../../../features/all_product_feature/data/remote/data_sources/all_product_remotedatasource_impl.dart'
    as _i5;
import '../../../features/all_product_feature/data/repositories/all_product_repo_impl.dart'
    as _i7;
import '../../../features/all_product_feature/domain/repositories/all_product_repo.dart'
    as _i6;
import '../../../features/all_product_feature/domain/use_cases/get_all_prduct_usecase.dart'
    as _i8;
import '../../../features/all_product_feature/presentation/manager/all_product_cubit.dart'
    as _i9;
import '../../api/api_manger.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.APiManger>(() => _i3.APiManger());
    gh.factory<_i4.AllProductRemoteDatasource>(
        () => _i5.AllProductRemoteDatasourceImpl(gh<_i3.APiManger>()));
    gh.factory<_i6.AllProductRepo>(
        () => _i7.AllProductRepoImpl(gh<_i4.AllProductRemoteDatasource>()));
    gh.factory<_i8.GetAllProductUseCase>(
        () => _i8.GetAllProductUseCase(gh<_i6.AllProductRepo>()));
    gh.factory<_i9.AllProductCubit>(
        () => _i9.AllProductCubit(gh<_i8.GetAllProductUseCase>()));
    return this;
  }
}
