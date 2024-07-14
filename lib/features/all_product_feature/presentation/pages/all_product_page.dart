import 'package:flutter/material.dart';
import 'package:route_task/features/all_product_feature/presentation/widgets/costume_appBar.dart';

class AllProductPage extends StatelessWidget {
  const AllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
       body: Padding(
         padding: EdgeInsets.all(16.0),
         child: Column(
           children: [
             CostumeAppbar()
           ],
         ),
       ),
      ),
    );
  }
}
