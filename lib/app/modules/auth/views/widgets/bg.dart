import 'package:astro/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BG extends StatelessWidget {
  const BG({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "BG",
      transitionOnUserGestures: true,
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              Assets.yogi,
              fit: BoxFit.cover,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Get.theme.colorScheme.secondaryContainer
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
