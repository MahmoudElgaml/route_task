import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';

class ProductItemDetail extends StatelessWidget {
  const ProductItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "productName",
            style: AppStyle.style14(context),
          ),
          Text(
            "productdescription",
            style: AppStyle.style14(context),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "price",
                style: AppStyle.style14(context),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                "dissacount",
                style: AppStyle.style11(context).copyWith(
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
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
                "(4.6)",
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
          )
        ],
      ),
    );
  }
}
