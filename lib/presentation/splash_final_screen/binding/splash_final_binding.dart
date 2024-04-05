import 'package:codeland_test/presentation/splash_final_screen/controller/splash_final_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashFinalScreen.
///
/// This class ensures that the SplashFinalController is created when the
/// SplashFinalScreen is first loaded.
class SplashFinalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashFinalController());
  }
}
