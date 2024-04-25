import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PageFiveScreen extends StatelessWidget {
  PageFiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              height: 800.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup22,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 42.v),
                          _buildRowSpacer(context),
                          SizedBox(height: 14.v),
                          Container(
                            margin: EdgeInsets.only(
                              left: 55.h,
                              right: 40.h,
                            ),
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL28,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup5,
                                        height: 35.adaptSize,
                                        width: 35.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 24.h,
                                          top: 3.v,
                                        ),
                                        child: Text(
                                          "USERNAME ",
                                          style: CustomTextStyles
                                              .headlineSmallBlack900,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 29.v),
                                SizedBox(
                                  height: 55.v,
                                  width: 295.h,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomTextFormField(
                                        width: 200.h,
                                        controller: passwordController,
                                        hintText: "PASSWORD",
                                        hintStyle:
                                            theme.textTheme.headlineSmall!,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        alignment: Alignment.center,
                                        obscureText: true,
                                        borderDecoration:
                                            TextFormFieldStyleHelper.fillWhiteA,
                                        filled: true,
                                        fillColor: appTheme.whiteA700,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgLock,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                          left: 29.h,
                                          top: 14.v,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "FORGOT PASSWORD?",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 15.v)
                              ],
                            ),
                          ),
                          SizedBox(height: 33.v),
                          _buildRowLogIn(context),
                          SizedBox(height: 62.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse4,
                            height: 100.v,
                            width: 39.h,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(height: 13.v),
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
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1,
                    height: 192.v,
                    width: 58.h,
                    radius: BorderRadius.circular(
                      29.h,
                    ),
                    alignment: Alignment.bottomLeft,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowSpacer(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse2,
            height: 170.v,
            width: 47.h,
            margin: EdgeInsets.only(bottom: 95.v),
          ),
          Spacer(),
          Container(
            width: 234.h,
            margin: EdgeInsets.only(
              top: 37.v,
              bottom: 68.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle7,
                  height: 160.v,
                  width: 234.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle6,
                  height: 160.v,
                  width: 1.h,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle7,
                  height: 160.v,
                  width: 1.h,
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5,
            height: 124.v,
            width: 50.h,
            margin: EdgeInsets.only(
              left: 25.h,
              top: 141.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLogIn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 114.h,
            text: "Log in",
            margin: EdgeInsets.only(top: 3.v),
            onPressed: () {
              onTapLogin(context);
            },
          ),
          CustomElevatedButton(
            width: 120.h,
            text: "Sign up",
            onPressed: () {
              onTapSignup(context);
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the pageThreeScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pageThreeScreen);
  }

  /// Navigates to the pageThreeScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pageThreeScreen);
  }
}
