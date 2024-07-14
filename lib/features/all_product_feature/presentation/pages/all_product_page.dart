import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:route_task/features/all_product_feature/presentation/widgets/costume_appBar.dart';
import 'package:route_task/features/all_product_feature/presentation/widgets/product_item.dart';

class AllProductPage extends StatelessWidget {
  const AllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
       body: Padding(
         padding: EdgeInsets.all(16.0),
         child: Column(
           children: [
             CostumeAppbar(),
             Gap(30),
             Center(child: ProductItem())
           ],
         ),
       ),
      ),
    );
  }
}
