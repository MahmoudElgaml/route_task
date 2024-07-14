import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/core/erorr/failure.dart';
import 'package:route_task/features/all_product_feature/data/remote/data_sources/all_product_remotedatasource.dart';
import 'package:route_task/features/all_product_feature/domain/entities/product_entity.dart';
import 'package:route_task/features/all_product_feature/domain/repositories/all_product_repo.dart';
@Injectable(as:  AllProductRepo)
class AllProductRepoImpl extends AllProductRepo{

  AllProductRemoteDatasource allProductRemoteDatasource;

  AllProductRepoImpl(this.allProductRemoteDatasource);

  @override
  Future<Either<Failure, ProductEntity>> getAllProduct() {
    return allProductRemoteDatasource.getAllProduct();
  }

}