import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:route_task/features/all_product_feature/presentation/manager/all_product_cubit.dart';
import 'package:route_task/features/all_product_feature/presentation/manager/all_product_cubit.dart';
import 'package:route_task/features/all_product_feature/presentation/widgets/costume_appBar.dart';
import 'package:route_task/features/all_product_feature/presentation/widgets/product_item.dart';

class AllProductPage extends StatelessWidget {
  const AllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CostumeAppbar(),
              const Gap(30),
              BlocBuilder<AllProductCubit, AllProductState>(
                builder: (context, state) {
                  if (state is AllProductLoadingState){
                   return const Center(child: CircularProgressIndicator());
                  }
                  if(state is AllProductFailState){
                    return Center(child: Text(state.message));
                  }
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 191 / 270,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => ProductItem(product: AllProductCubit.get(context).product[index],),
                      itemCount: AllProductCubit.get(context).product.length,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
