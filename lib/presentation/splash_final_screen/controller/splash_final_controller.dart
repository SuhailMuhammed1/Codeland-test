import '../../../core/app_export.dart';
import '../models/splash_final_model.dart';

/// A controller class for the SplashFinalScreen.
///
/// This class manages the state of the SplashFinalScreen, including the
/// current splashFinalModelObj
class SplashFinalController extends GetxController {
  Rx<SplashFinalModel> splashFinalModelObj = SplashFinalModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.offNamed(
        AppRoutes.loginFinalScreen,
      );
    });
  }
}
