import 'package:astro/constants/message_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController showSnackbar({
  required String message,
  MessageType type = MessageType.normal,
}) {
  return Get.showSnackbar(
    GetSnackBar(
      snackStyle: SnackStyle.GROUNDED,
      messageText: Text(
        message,
        style: TextStyle(
          color: switch (type) {
            MessageType.success => Get.theme.colorScheme.onSecondaryContainer,
            MessageType.error => Get.theme.colorScheme.onErrorContainer,
            MessageType.warning => Get.theme.colorScheme.onTertiaryContainer,
            MessageType.normal => Colors.white,
          },
        ),
      ),
      backgroundColor: switch (type) {
        MessageType.success => Get.theme.colorScheme.secondaryContainer,
        MessageType.error => Get.theme.colorScheme.errorContainer,
        MessageType.warning => Get.theme.colorScheme.tertiaryContainer,
        MessageType.normal => const Color(0xFF303030),
      },
      duration: const Duration(seconds: 2),
    ),
  );
}
