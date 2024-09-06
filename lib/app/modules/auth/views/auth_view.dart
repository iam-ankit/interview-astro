import 'package:astro/app/routes/app_pages.dart';
import 'package:astro/constants/assets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Get.theme.colorScheme.secondaryContainer,
        body: SizedBox.fromSize(
          size: Get.size,
          child: Column(
            children: [
              Hero(
                tag: "BG",
                transitionOnUserGestures: true,
                child: SizedBox(
                  height: Get.height * .75,
                  width: Get.width,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        Assets.yogi,
                        height: Get.height * .75,
                        width: Get.width,
                        fit: BoxFit.cover,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
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
              ),
              const SizedBox(height: kToolbarHeight),
              SizedBox(
                height: kToolbarHeight,
                width: Get.width * .75,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Get.theme.colorScheme.primary,
                      foregroundColor: Get.theme.colorScheme.onPrimary),
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: const Text("Login"),
                ),
              ),
              SizedBox.square(
                dimension: 10,
              ),
              SizedBox(
                height: kToolbarHeight,
                width: Get.width * .75,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGN_UP);
                  },
                  child: const Text("Sign-up"),
                ),
              ),
            ],
          ),
        ));
  }
}
