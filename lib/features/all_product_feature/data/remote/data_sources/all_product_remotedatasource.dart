import 'package:dartz/dartz.dart';

import '../../../../../core/erorr/failure.dart';
import '../models/ProductModel.dart';

abstract class AllProductRemoteDatasource{
  Future<Either<Failure,ProductModel>> getAllProduct();

}