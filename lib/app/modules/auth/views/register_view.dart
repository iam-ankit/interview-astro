import 'package:astro/app/modules/auth/controllers/auth_controller.dart';
import 'package:astro/app/modules/auth/views/widgets/bg.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegisterView extends GetView<AuthController> {
  RegisterView({super.key});
  final isObscuredPass = true.obs;
  final isObscuredConf = true.obs;
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
                            obscureText: isObscuredPass.value,
                            validator: (value) {
                              value ??= "";
                              if (value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value.length < 6) {
                                return "Password should longer then 6 characters";
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
                                  isObscuredPass.toggle();
                                },
                                icon: Icon(
                                  isObscuredPass.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox.square(
                          dimension: 10,
                        ),
                        Obx(
                          () => TextFormField(
                            textInputAction: TextInputAction.done,
                            autofillHints: const [AutofillHints.password],
                            obscureText: isObscuredConf.value,
                            validator: (value) {
                              value ??= "";
                              if (controller.password.text != value) {
                                return "Passwords do not match";
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
                              hintText: "Confirm Password",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  isObscuredConf.toggle();
                                },
                                icon: Icon(
                                  isObscuredConf.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                            onFieldSubmitted: (value) {
                              if (formKey.currentState?.validate() ?? false) {
                                controller.signUpWithFirebaseEmail();
                              }
                            },
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
                                controller.signUpWithFirebaseEmail();
                              }
                            },
                            child: const Text("Sign-Up"),
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
