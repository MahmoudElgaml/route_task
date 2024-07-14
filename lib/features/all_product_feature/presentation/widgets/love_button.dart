import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:route_task/generated/assets.dart';

class LoveButton extends StatelessWidget {
  const LoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Center(
          child: SvgPicture.asset(
        Assets.imagesLoveButton,

      )),
    );
  }
}
