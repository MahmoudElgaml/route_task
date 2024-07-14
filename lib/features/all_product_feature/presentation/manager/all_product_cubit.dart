import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:route_task/features/all_product_feature/data/remote/models/ProductModel.dart';
import 'package:route_task/features/all_product_feature/domain/entities/product_entity.dart';

import '../../domain/use_cases/get_all_prduct_usecase.dart';

part 'all_product_state.dart';

@injectable
class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit(this.getAllProductUseCase) : super(AllProductInitial());
  static AllProductCubit get(context)=>BlocProvider.of(context);
  GetAllProductUseCase getAllProductUseCase;
  List<Product> product = [];

  getProducts() async {
    emit(AllProductLoadingState());
    var result = await getAllProductUseCase.call();
    result.fold(
      (l) {
        emit(AllProductFailState(l.message));

      },
      (r) {
        emit(AllProductSuccessState());
        product = r.products ?? [];
      },
    );
  }
}
