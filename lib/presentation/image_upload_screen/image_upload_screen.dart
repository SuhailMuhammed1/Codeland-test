import 'dart:io';

import 'package:codeland_test/widgets/app_bar/custom_app_bar.dart';
import 'package:codeland_test/widgets/app_bar/appbar_title.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:codeland_test/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:codeland_test/core/app_export.dart';
import 'controller/image_upload_controller.dart';

// ignore_for_file: must_be_immutable
class ImageUploadScreen extends GetWidget<ImageUploadController> {
  ImageUploadScreen({Key? key})
      : super(
          key: key,
        );

  @override
  final ImageUploadController controller = Get.put(ImageUploadController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Obx(
          () => Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 11.v,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: GestureDetector(
                    onTap: () => controller.pickImage(),
                    child: DottedBorder(
                      color:
                          theme.colorScheme.primaryContainer.withOpacity(0.66),
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 1.v,
                        right: 1.h,
                        bottom: 1.v,
                      ),
                      strokeWidth: 1.h,
                      dashPattern: const [
                        6,
                        6,
                      ],
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 97.h,
                          vertical: 203.v,
                        ),
                        decoration: AppDecoration.outlinePrimaryContainer1,
                        child: controller.imageFile.value != null
                            ? Image.file(
                                controller.imageFile.value!,
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                              )
                            : CustomImageView(
                                imagePath: ImageConstant.imgImage,
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 74.v),
                _buildTwo(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_upload_a_image".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          onPressed: () {
            controller.pickImage();
          },
          width: 119.h,
          text: "lbl_upload".tr,
          buttonTextStyle: CustomTextStyles.bodyMediumOnError,
        ),
        CustomElevatedButton(
          onPressed: () {
            if (controller.imageFile.value != null) {
              Get.to(
                () =>
                    ImagePreviewScreen(imageFile: controller.imageFile.value!),
              );
            } else {
              Get.snackbar(
                'No Image',
                'Please upload an image.',
                snackPosition: SnackPosition.BOTTOM,
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.grey.withOpacity(0.3),
                margin: EdgeInsets.all(5.v),
              );
            }
          },
          width: 112.h,
          text: "lbl_view".tr,
          buttonStyle: CustomButtonStyles.outlinePrimaryTL12,
          buttonTextStyle: theme.textTheme.bodyMedium!,
        ),
      ],
    );
  }
}

class ImagePreviewScreen extends StatelessWidget {
  final File imageFile;

  const ImagePreviewScreen({Key? key, required this.imageFile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Preview'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Image.file(imageFile),
      ),
    );
  }
}
