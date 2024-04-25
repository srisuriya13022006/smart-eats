import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Image10, Image9, Image11 }
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgImage10,
      activeIcon: ImageConstant.imgImage10,
      type: BottomBarEnum.Image10,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgImage9,
      activeIcon: ImageConstant.imgImage9,
      type: BottomBarEnum.Image9,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgImage11,
      activeIcon: ImageConstant.imgImage11,
      type: BottomBarEnum.Image11,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.v,
      decoration: BoxDecoration(
        color: appTheme.pink100,
        borderRadius: BorderRadius.circular(
          27.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: ImageConstant.imgImage9,
              height: 45.v,
              width: 56.h,
              radius: BorderRadius.circular(
                22.h,
              ),
            ),
            activeIcon: CustomImageView(
              imagePath: ImageConstant.imgImage10,
              height: 44.v,
              width: 56.h,
              radius: BorderRadius.circular(
                22.h,
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
