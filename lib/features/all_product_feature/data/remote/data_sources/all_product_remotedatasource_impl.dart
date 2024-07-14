import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/core/api/api_manger.dart';
import 'package:route_task/core/api/end_points.dart';
import 'package:route_task/core/erorr/failure.dart';
import 'package:route_task/features/all_product_feature/data/remote/data_sources/all_product_remotedatasource.dart';
import 'package:route_task/features/all_product_feature/data/remote/models/ProductModel.dart';

@Injectable(as: AllProductRemoteDatasource)
class AllProductRemoteDatasourceImpl implements AllProductRemoteDatasource {
  APiManger aPiManger;

  AllProductRemoteDatasourceImpl(this.aPiManger);

  @override
  Future<Either<Failure, ProductModel>> getAllProduct() async {
    try {
      var response = await aPiManger.get(EndPoints.allProduct);
      ProductModel productModel = ProductModel.fromJson(response.data);
      return right(productModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
