import 'package:astro/app/modules/auth/controllers/auth_controller.dart';
import 'package:astro/app/modules/home/controllers/home_controller.dart';
import 'package:astro/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends GetView<AuthController> {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .7,
      color: Get.theme.colorScheme.surfaceContainer,
      child: Column(
        children: [
          const Spacer(),
          TextButton.icon(
            onPressed: () {
              controller.firebaseInstance.signOut().then(
                    (_) => Get.offAllNamed(Routes.AUTH),
                  );
            },
            label: const Text("Log-out"),
            icon: const Icon(Icons.logout_outlined),
          ),
          SizedBox(
            height: MediaQuery.viewPaddingOf(context).bottom,
          )
        ],
      ),
    );
  }
}
