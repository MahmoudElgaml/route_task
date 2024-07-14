import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_style.dart';
import '../../domain/entities/product_entity.dart';

class ProductItemDetail extends StatelessWidget {
  const ProductItemDetail({super.key,required this.product});
 final Product product;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title??"",
            maxLines: 1,
            style: AppStyle.style14(context),
          ),
          Text(
            product.description??"",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyle.style14(context),
          ),
          const Gap(8),
          FittedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.price.toString(),
                  style: AppStyle.style14(context),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  getDiscount(),
                  style: AppStyle.style11(context).copyWith(
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Review",
                  style: AppStyle.style14(context),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  product.rating.toString(),
                  style: AppStyle.style12(context),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String getDiscount() => (product.discountPercentage!*product.price!).toString();
}
