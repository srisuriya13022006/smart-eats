import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class PageThreeScreen extends StatelessWidget {
  const PageThreeScreen({Key? key})
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
                height: 787.v,
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
                        imagePath: ImageConstant.imgFrame11,
                        height: 516.v,
                        width: 233.h,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(height: 64.v),
                      CustomElevatedButton(
                        width: 116.h,
                        text: "GO BACK",
                        onPressed: () {
                          onTapGoback(context);
                        },
                      ),
                      SizedBox(height: 68.v),
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

  /// Navigates to the pageFiveScreen when the action is triggered.
  onTapGoback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pageFiveScreen);
  }
}
