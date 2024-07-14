part of 'all_product_cubit.dart';

@immutable
abstract class AllProductState {}

class AllProductInitial extends AllProductState {}
class AllProductLoadingState extends AllProductState {}
class AllProductSuccessState extends AllProductState {}
class AllProductFailState extends AllProductState {

 final  String message;

  AllProductFailState(this.message);
}


