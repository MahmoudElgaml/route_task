import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/core/erorr/failure.dart';
import 'package:route_task/features/all_product_feature/domain/entities/product_entity.dart';
import 'package:route_task/features/all_product_feature/domain/repositories/all_product_repo.dart';

@injectable
class GetAllProductUseCase{
  AllProductRepo allProductRepo;

  GetAllProductUseCase(this.allProductRepo);

  Future<Either<Failure,ProductEntity>> call(){
    return allProductRepo.getAllProduct();
  }
}