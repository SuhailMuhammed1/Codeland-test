import 'package:codeland_test/presentation/login_final_screen/controller/login_final_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginFinalScreen.
///
/// This class ensures that the LoginFinalController is created when the
/// LoginFinalScreen is first loaded.
class LoginFinalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginFinalController());
  }
}
