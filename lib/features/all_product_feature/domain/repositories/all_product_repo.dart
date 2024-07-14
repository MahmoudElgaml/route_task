import 'package:dartz/dartz.dart';
import 'package:route_task/core/erorr/failure.dart';
import 'package:route_task/features/all_product_feature/domain/entities/product_entity.dart';

abstract class AllProductRepo{

Future<Either<Failure,ProductEntity>> getAllProduct();

}