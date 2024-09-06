import 'package:astro/app/modules/auth/controllers/auth_controller.dart';
import 'package:astro/app/modules/auth/views/widgets/bg.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ForgotPasswordView extends GetView<AuthController> {
  ForgotPasswordView({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BG(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Spacer(),
                // SizedBox.square(
                //   dimension: ((3 / 2) * kToolbarHeight) +
                //       MediaQuery.viewPaddingOf(context).top,
                // ),
                const Text(
                    "If your account is registered, an email will sent to your account to reset password"),
                const SizedBox.square(
                  dimension: 10,
                ),
                Form(
                  key: formKey,
                  child: TextFormField(
                    controller: controller.email,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.send,
                    autofillHints: const [AutofillHints.email],
                    validator: (value) {
                      if (!GetUtils.isEmail(value ?? "")) {
                        return "Email is not valid";
                      } else {
                        return null;
                      }
                    },
                    onFieldSubmitted: (_) {
                      if (formKey.currentState?.validate() ?? false) {
                        controller.resetPasswordWithFirebaseEmail();
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Get.theme.colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Email address",
                    ),
                  ),
                ),
                SizedBox.square(
                  dimension: 20,
                ),
                // const Spacer(),
                SizedBox(
                  height: kToolbarHeight,
                  width: Get.width * .75,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Get.theme.colorScheme.primary,
                        foregroundColor: Get.theme.colorScheme.onPrimary),
                    onPressed: () {
                      // Get.toNamed(Routes.LOGIN);
                      if (formKey.currentState?.validate() ?? false) {
                        controller.resetPasswordWithFirebaseEmail();
                      }
                    },
                    child: const Text("Send email"),
                  ),
                ),
                SizedBox.square(
                  dimension:
                      MediaQuery.viewPaddingOf(context).bottom + kToolbarHeight,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
