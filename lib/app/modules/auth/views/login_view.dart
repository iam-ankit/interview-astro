import 'package:astro/app/modules/auth/controllers/auth_controller.dart';
import 'package:astro/app/modules/auth/views/widgets/bg.dart';
import 'package:astro/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginView extends GetView<AuthController> {
  LoginView({super.key});
  final isObscured = true.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Get.theme.colorScheme.secondaryContainer,
        body: Stack(
          children: [
            const BG(),
            SizedBox.fromSize(
              size: Get.size,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: formKey,
                  child: AutofillGroup(
                    child: Column(
                      children: [
                        const Spacer(),
                        TextFormField(
                          controller: controller.email,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.email],
                          validator: (value) {
                            if (!GetUtils.isEmail(value ?? "")) {
                              return "Email is not valid";
                            } else {
                              return null;
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
                        const SizedBox.square(
                          dimension: 10,
                        ),
                        Obx(
                          () => TextFormField(
                            controller: controller.password,
                            textInputAction: TextInputAction.done,
                            autofillHints: const [AutofillHints.password],
                            obscureText: isObscured.value,
                            validator: (value) {
                              value ??= "";
                              if (value.isEmpty) {
                                return "Password cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Get.theme.colorScheme.primary,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: "Password",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  isObscured.toggle();
                                },
                                icon: Icon(
                                  isObscured.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                            onFieldSubmitted: (value) {
                              if (formKey.currentState?.validate() ?? false) {
                                controller.signInWithFirebaseEmail();
                              }
                            },
                          ),
                        ),
                        const SizedBox.square(
                          dimension: 10,
                        ),
                        SizedBox(
                          height: kToolbarHeight,
                          width: Get.width * .75,
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.RESET_PASSWORD);
                            },
                            child: const Text("Forgot Password?"),
                          ),
                        ),
                        const SizedBox.square(
                          dimension: 20,
                        ),
                        SizedBox(
                          height: kToolbarHeight,
                          width: Get.width * .75,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Get.theme.colorScheme.primary,
                                foregroundColor:
                                    Get.theme.colorScheme.onPrimary),
                            onPressed: () {
                              if (formKey.currentState?.validate() ?? false) {
                                controller.signInWithFirebaseEmail();
                              }
                            },
                            child: const Text("Login"),
                          ),
                        ),
                        SizedBox(
                            height: kToolbarHeight +
                                MediaQuery.viewPaddingOf(context).bottom),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
