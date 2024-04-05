import '../../../core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginFinalScreen.
///
/// This class manages the state of the LoginFinalScreen, including the
/// current loginFinalModelObj
class LoginFinalController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();


  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
