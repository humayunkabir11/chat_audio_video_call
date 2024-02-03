import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_routes/app_route.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/Screens/DoctorParrt/WellComeTwo/wellcome_two.dart';
import 'package:dr_therapy/view/widgets/CustomNavBar/custom_nav_bar.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../widgets/drawer/custom_drweare_two.dart';

class HomeMain extends StatefulWidget {
    HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}
class _HomeMainState extends State<HomeMain> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  MotionTabBarController? _motionTabBarController;
   bool emergency=true;
   bool doctor =true;
   //late int _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:CustomNavBar(),
        key: _scaffoldKey,
        drawer:const DrwareTwo(),
        body: Column(
          children:[
            const SizedBox(height: 7.0,),
             //App Bar
             Padding(
               padding:  const EdgeInsets.only(left: 20.0,right: 20.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   GestureDetector(
                     onTap: (){
                       _scaffoldKey.currentState!.openDrawer();
                     },
                     child: Container(
                       height: 39.0,
                       width: 39.0,
                       decoration: const BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.0),),
                         color: AppColors.borderColor,
                            ),
                       child: const Image(image: AssetImage(AppImage.profileImage),height: 30.0,width: 30.0,),
                       ),
                   ),
                   Image.asset(AppImage.appLogo,
                     height: 47.0,
                     width: 145.0,
                   ),
                   Container(
                     height: 26.0,
                     width: 26.0,
                     child: SvgPicture.asset(AppIcons.settingsIcon),
                   ),
                 ],
               ),
             ),
            const SizedBox(height: 13.0,),
            SizedBox(
             height: 1.0,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.gray6,
                ),
              ),
            ),
            const SizedBox(height: 30.0,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(AppString.findYourTherapist,
                              maxLines: 2,
                              style: TextStyle(
                                fontWeight:FontWeight.w600,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25.0,),
                    //Top two button
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: Row(
                        children: [

                          // Button one

                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {

                                  emergency=true;
                                });
                              },
                              child: Container(
                                height: 43.0,
                                decoration:  BoxDecoration(

                                  color: emergency?AppColors.primaryColor: AppColors.seconderyDeepGreen,
                                  borderRadius: const BorderRadius.all(Radius.circular(80.0),),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppIcons.phoneIcon),
                                    const SizedBox(width: 10.0,),
                                    const Text(AppString.emargency,
                                      style: TextStyle(
                                        color: AppColors.whiteLight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0,),
                          //Button two
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  emergency=false;
                                  Get.toNamed(AppRoute.appointment_page);
                                  emergency=true;
                                });
                              },
                              child: Container(
                                height: 43.0,
                                decoration: BoxDecoration(
                                  color:emergency?AppColors.seconderyDeepGreen:AppColors.primaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(80.0),),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppIcons.eventIcon,color: AppColors.whiteLight),
                                    const SizedBox(width: 10.0,),
                                    const Text(AppString.appointment,
                                      style: TextStyle(
                                        color: AppColors.whiteLight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35.0,),
                    //Doctore +  pricing + service
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
                      child: Row(
                        children: [
                          // Doctor section
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  doctor=!doctor;
                                  Get.toNamed(AppRoute.therapist_two_screen);
                                });
                              },
                              child: Container(
                                height: 116.0,
                                decoration:  BoxDecoration(
                                  border: Border.all(width: 1.0,color: AppColors.borderColor),
                                  color:AppColors.primaryColor,
                                  borderRadius:const BorderRadius.all(Radius.circular(14.0,),),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppIcons.doctgorICon,),
                                    const SizedBox(height: 15.0,),
                                    const Text(AppString.doctors,
                                      style: TextStyle(
                                        color: AppColors.whiteLight,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0,),

                          //Pricing Section
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                 Get.toNamed(AppRoute.pricingScreen);
                              },
                              child: Container(
                                height: 116.0,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0,color: AppColors.borderColor),
                                  borderRadius:const BorderRadius.all(Radius.circular(14.0,),),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppIcons.stathosCpeIcon,),
                                    const SizedBox(height: 15.0,),
                                    const Text(AppString.pricingPlan,
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0,),

                          // Service Section
                          Expanded(

                            child: GestureDetector(
                              onTap: (){
                               // Get.toNamed(AppRoute.chat_list_page);
                              },
                              child: Container(
                                height: 116.0,
                                decoration:  BoxDecoration(
                                  // color: AppColors.primaryColor,
                                  border:Border.all(color: AppColors.borderColor,width: 1.0),
                                  borderRadius:const BorderRadius.all(Radius.circular(14.0,),),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppIcons.serviceIcon,),
                                    const SizedBox(height: 15.0,),
                                    const Text(AppString.services,
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 45.0,),

                    Padding(
                      padding:const EdgeInsets.only(left: 20.0, right: 20.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(AppString.todayPatients,
                            style: GoogleFonts.openSans(
                              color: AppColors.blackColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const CustomText(
                            text: AppString.seeAll,
                            fontSize: 14.0,
                            color: AppColors.timeBlack,
                          ),
                        ],
                      ),


                    ),
                    const SizedBox(height: 22.0,),

                    //Todays patiens
                    Padding(
                      padding:const EdgeInsets.only(left: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(6, (index) => Padding(
                            padding: EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: (){
                                Get.snackbar("","Tap on $index");
                              },
                              child: Container(
                                height: 170.0,
                                width: 115.0,
                                decoration:BoxDecoration(
                                  border:Border.all(width: 0.9,color: AppColors.borderColor,),
                                  borderRadius: BorderRadius.all(Radius.circular(12.0,)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:85.0,
                                      width: 95.0,
                                      decoration:  const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(6.0,),),
                                      ),
                                      child: Image.asset(AppImage.todaysPetains,),

                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0,bottom: 5.0,),
                                            child: CustomText(
                                              text: "Hasibul Hasan Shanto ",
                                              maxLines: 2,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,

                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomText(
                                          text: "Vedio Call_",
                                          color: AppColors.timeBlack,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.0,
                                        ),
                                        CustomText(
                                          text: "8.30",
                                          color: AppColors.primaryColor,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                        ),
                      ),
                    ),

                    const SizedBox(height: 36.0),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
                      child: Container(
                        width: double.maxFinite,
                        height: 173.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(12.0),),
                          border: Border.all(width: 1.0,color: AppColors.borderColor),
                        ),

                        child:   Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(
                                    text: AppString.sessionScheduled,
                                    color: AppColors.timeBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        child:LinearPercentIndicator(
                                          barRadius: Radius.circular(12.0),
                                          width: 50.0,
                                          lineHeight: 8.0,
                                          percent:1.0,
                                          progressColor: Colors.green,
                                        ),
                                      ),
                                      const CustomText(
                                        text:"100%",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(
                                    text: AppString.sessionScheduled,
                                    color: AppColors.timeBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.0,

                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        child:LinearPercentIndicator(
                                          barRadius: Radius.circular(12.0),
                                          width: 50.0,
                                          lineHeight: 8.0,
                                          percent:1.0,
                                          progressColor: Colors.green,
                                        ),
                                      ),
                                      const CustomText(
                                        text:"100%",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(
                                    text: AppString.sessionScheduled,
                                    color: AppColors.timeBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.0,

                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        child:LinearPercentIndicator(
                                          barRadius: Radius.circular(12.0),
                                          width: 50.0,
                                          lineHeight: 8.0,
                                          percent:1.0,
                                          progressColor: Colors.green,
                                        ),
                                      ),
                                      const CustomText(
                                        text:"100%",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(
                                    text: AppString.sessionScheduled,
                                    color: AppColors.timeBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.0,

                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 60.0,
                                        child:LinearPercentIndicator(
                                          barRadius: Radius.circular(12.0),
                                          width: 50.0,
                                          lineHeight: 8.0,
                                          percent:1.0,
                                          progressColor: Colors.green,
                                        ),
                                      ),
                                      const CustomText(
                                        text:"100%",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36.0,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      );

  }
}
