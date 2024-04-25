import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/home_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          height: 695.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup22,
                height: 723.v,
                width: 390.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildStackView(context),
                    SizedBox(height: 44.v),
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 194.v,
                                width: 296.h,
                                decoration: AppDecoration.fillPrimary,
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle160,
                                      height: 194.v,
                                      width: 296.h,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 292.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle162,
                                              height: 194.v,
                                              width: 4.h,
                                            ),
                                            Spacer(
                                              flex: 33,
                                            ),
                                            Spacer(
                                              flex: 66,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle161,
                                              height: 194.v,
                                              width: 1.h,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle160,
                                              height: 194.v,
                                              width: 1.h,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 96.v),
                              _buildRowRectangle(context)
                            ],
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 52.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 40.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
          ),
          CustomAppBar(
            leadingWidth: 29.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 21.v,
                bottom: 21.v,
              ),
            ),
            actions: [
              Container(
                height: 45.adaptSize,
                width: 45.adaptSize,
                margin: EdgeInsets.fromLTRB(5.h, 3.v, 5.h, 4.v),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse220,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      radius: BorderRadius.circular(
                        22.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse220,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      radius: BorderRadius.circular(
                        22.h,
                      ),
                      alignment: Alignment.center,
                    )
                  ],
                ),
              )
            ],
            styleType: Style.bgFill,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowRectangle(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 1.v,
                );
              },
              itemCount: 1,
              itemBuilder: (context, index) {
                return HomeItemWidget();
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle160152x245,
            height: 152.v,
            width: 245.h,
            radius: BorderRadius.circular(
              30.h,
            ),
          )
        ],
      ),
    );
  }
}
