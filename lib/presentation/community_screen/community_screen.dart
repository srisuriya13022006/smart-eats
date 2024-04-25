import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../home_page/home_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommunityScreen extends StatelessWidget {
  CommunityScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray5001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup22,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Column(
              children: [
                SizedBox(height: 38.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 33.h,
                      right: 61.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.v,
                            bottom: 10.v,
                          ),
                          child: Text(
                            "“",
                            style: CustomTextStyles.bodyMediumInter,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 13.v,
                          ),
                          child: Text(
                            "Can we imagine a world without hunger?",
                            style: CustomTextStyles.bodyMediumInterTeal900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            bottom: 13.v,
                          ),
                          child: Text(
                            "”",
                            style: CustomTextStyles.bodyMediumInter,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 27.v),
                SizedBox(
                  height: 426.v,
                  width: 369.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      _buildColumnPrice(context),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 44.v,
                          width: 49.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              22.h,
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgImage18,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
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
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 53.v,
      title: AppbarTitle(
        text: "LET’S HELP THEM !",
        margin: EdgeInsets.only(left: 113.h),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildColumnPrice(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(left: 12.h),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder60,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage17,
              height: 225.v,
              width: 357.h,
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "#SMARTEATS FEED",
                style: CustomTextStyles.bodyMediumInter,
              ),
            ),
            SizedBox(height: 22.v),
            SizedBox(
              height: 117.v,
              width: 357.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage21,
                            height: 58.v,
                            width: 306.h,
                          ),
                          SizedBox(height: 20.v),
                          Divider(
                            endIndent: 7.h,
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 305.h,
                      margin: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "Hey there! Help the people from hungry near\n velachery , 7th street chennai",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumInter,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Image10:
        return AppRoutes.homePage;
      case BottomBarEnum.Image9:
        return "/";
      case BottomBarEnum.Image11:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
