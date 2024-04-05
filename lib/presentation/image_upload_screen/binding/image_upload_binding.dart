import 'package:codeland_test/presentation/image_upload_screen/controller/image_upload_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageUploadScreen.
///
/// This class ensures that the ImageUploadController is created when the
/// ImageUploadScreen is first loaded.
class ImageUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageUploadController());
  }
}
