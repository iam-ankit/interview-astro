import 'package:astro/app/routes/app_pages.dart';
import 'package:astro/constants/message_type.dart';
import 'package:astro/core/snackbar.dart';
import 'package:astro/main.dart';
import 'package:astro/utils/exception_handling_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth firebaseInstance = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  User? user;

  signInWithFirebaseEmail() async {
    try {
      isLoading.value = true;
      UserCredential userCredential =
          await firebaseInstance.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      user = userCredential.user;
      print(user?.email);
      isLoading.value = false;
      showSnackbar(
        message: "Logged in successfully",
        type: MessageType.success,
      );
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      String errorMessage = ExceptionHandlingHelper.handleException(e.code);
      isLoading.value = false;
      showSnackbar(
        message: errorMessage,
        type: MessageType.error,
      );
    } catch (e) {
      isLoading.value = false;
      showSnackbar(
        message: e.toString(),
        type: MessageType.error,
      );
    }
  }

  signUpWithFirebaseEmail() async {
    try {
      isLoading.value = true;
      UserCredential userCredential =
          await firebaseInstance.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      isLoading.value = false;
      showSnackbar(
        message: "Sign-up successfully",
        type: MessageType.success,
      );
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      String errorMessage = ExceptionHandlingHelper.handleException(e.code);
      isLoading.value = false;
      showSnackbar(
        message: errorMessage,
        type: MessageType.error,
      );
    } catch (e) {
      isLoading.value = false;
      showSnackbar(
        message: e.toString(),
        type: MessageType.error,
      );
    }
  }

  resetPasswordWithFirebaseEmail() async {
    try {
      isLoading.value = true;
      await firebaseInstance.sendPasswordResetEmail(
        email: email.text.trim(),
      );
      isLoading.value = false;
      showSnackbar(
        message: "Email sent successfully",
        type: MessageType.success,
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = ExceptionHandlingHelper.handleException(e.code);
      isLoading.value = false;
      showSnackbar(
        message: errorMessage,
        type: MessageType.error,
      );
    } catch (e) {
      isLoading.value = false;
      showSnackbar(
        message: e.toString(),
        type: MessageType.error,
      );
    }
  }
}
