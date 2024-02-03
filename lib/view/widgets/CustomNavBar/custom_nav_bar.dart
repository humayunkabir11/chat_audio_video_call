
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class CustomNavBar extends StatefulWidget{
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar>  with TickerProviderStateMixin{

  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
     vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  MotionTabBar(

      controller: _motionTabBarController, // ADD THIS if you need to change your tab programmatically

      initialSelectedTab: "Home",

      labels: const ["Inbox", "Home", "Profile",],

      icons: const [Icons.inbox, Icons.home, Icons.account_circle_sharp],

      // optional badges, length must be same with labels


      badges: [
        // Default Motion Badge Widget
        const MotionBadgeWidget(
          isIndicator: true,
          color: Colors.red,
          size:3,
        ),

        // custom badge Widget
        Container(
          color: Colors.transparent,
          padding: const EdgeInsets.all(2),
        ),

        null,
      ],

      tabSize: 50,
      tabBarHeight: 55,
      useSafeArea:true,
      textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      tabIconColor: AppColors.deepGray,
      tabIconSize: 28.0,
      tabIconSelectedSize: 26.0,
      tabSelectedColor:AppColors.primaryGreen,
      tabIconSelectedColor: Colors.white,
      tabBarColor:AppColors.whiteLight,
      onTabItemSelected: (int value) {
        setState(() {
          // _tabController!.index = value;
          _motionTabBarController!.index = value;
        });
      },
    );
  }
}
