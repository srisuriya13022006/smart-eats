import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class PageFourScreen extends StatelessWidget {
  const PageFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        body: SizedBox(
          height: 800.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup22,
                height: 792.v,
                width: 390.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 28.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 30.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 218.v,
                        width: 226.h,
                        radius: BorderRadius.circular(
                          109.h,
                        ),
                        alignment: Alignment.centerLeft,
                        onTap: () {
                          onTapImgImagetwoone(context);
                        },
                      ),
                      SizedBox(height: 76.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 217.v,
                        width: 223.h,
                        radius: BorderRadius.circular(
                          108.h,
                        ),
                        onTap: () {
                          onTapImgImageoneone(context);
                        },
                      ),
                      SizedBox(height: 65.v),
                      CustomElevatedButton(
                        width: 116.h,
                        text: "GO BACK",
                        onPressed: () {
                          onTapGoback(context);
                        },
                      ),
                      SizedBox(height: 72.v),
                      SizedBox(
                        height: 6.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: appTheme.deepPurple400,
                            dotColor: appTheme.black900.withOpacity(0.2),
                            dotHeight: 6.v,
                            dotWidth: 6.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onTapImgImagetwoone(BuildContext context) {}
  onTapImgImageoneone(BuildContext context) {}

  /// Navigates to the pageThreeScreen when the action is triggered.
  onTapGoback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pageThreeScreen);
  }
}
