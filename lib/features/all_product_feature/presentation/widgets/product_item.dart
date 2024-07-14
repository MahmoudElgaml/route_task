import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:route_task/features/all_product_feature/presentation/widgets/love_button.dart';
import 'package:route_task/features/all_product_feature/presentation/widgets/product_item_detail.dart';

import '../../../../generated/assets.dart';
import '../../domain/entities/product_entity.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0x4C004182)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: AspectRatio(
                  aspectRatio: 191 / 128,
                  child: CachedNetworkImage(
                    imageUrl: product.images![0],
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) =>
                        Text(error.toString()),
                  ),
                ),
              ),
              ProductItemDetail(
                product: product,
              )
            ],
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: LoveButton(),
                    )),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SvgPicture.asset(Assets.imagesIconPluscircle),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
