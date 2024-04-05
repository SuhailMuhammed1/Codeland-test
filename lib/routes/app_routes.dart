import 'package:get/get.dart';
import '../presentation/splash_final_screen/splash_final_screen.dart';
import '../presentation/splash_final_screen/binding/splash_final_binding.dart';
import '../presentation/login_final_screen/login_final_screen.dart';
import '../presentation/login_final_screen/binding/login_final_binding.dart';
import '../presentation/image_upload_screen/image_upload_screen.dart';
import '../presentation/image_upload_screen/binding/image_upload_binding.dart';


class AppRoutes {
  static const String splashFinalScreen = '/splash_final_screen';

  static const String loginFinalScreen = '/login_final_screen';

  static const String imageUploadScreen = '/image_upload_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashFinalScreen,
      page: () => const SplashFinalScreen(),
      bindings: [
        SplashFinalBinding(),
      ],
    ),
    GetPage(
      name: loginFinalScreen,
      page: () => LoginFinalScreen(),
      bindings: [
        LoginFinalBinding(),
      ],
    ),
    GetPage(
      name: imageUploadScreen,
      page: () => ImageUploadScreen(),
      bindings: [
        ImageUploadBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => const SplashFinalScreen(),
      bindings: [
        SplashFinalBinding(),
      ],
    )
  ];
}
