import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_routes/app_route.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/CustomContainer/custom_container.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/icons/icons.dart';

class TherapistTwoPage extends StatefulWidget {
  const TherapistTwoPage({super.key});

  @override
  State<TherapistTwoPage> createState() => _TherapistTwoPageState();
}

class _TherapistTwoPageState extends State<TherapistTwoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Scaffold(
             body: Column(
               children: [
                 const SizedBox(height: 13.0,),

                 //App Bar

                 Padding(
                   padding:const EdgeInsets.only(left: 20.0,right: 20.0),

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       // Back Button

                       Container(
                         height: 24.0,
                         width: 24.0,
                         child:
                         IconButton(onPressed:(){Get.back();}, icon:const Icon(Icons.arrow_back_ios),),
                       ),


                       //Center Logo

                       Image.asset(AppImage.appLogo,
                         height: 47.0,
                         width: 145.0,
                       ),

                       //Settings Icon

                       Container(
                         height: 26.0,
                         width: 26.0,
                         child: SvgPicture.asset(AppIcons.settingsIcon,color: AppColors.timeBlack,),
                       ),


                     ],
                   ),
                 ),

                 const SizedBox(height: 17.0,),

                 Container(height: 1.0,width: double.maxFinite,
                 color: AppColors.gray6,
                 ),

                 const SizedBox(height: 22.0,),


                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const SizedBox(height: 12.0,),

                      const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[ CustomText(
                            textAlign: TextAlign.start,
                            text: AppString.yourTherapist,
                            color: AppColors.blackColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                          ]
                      ),

                      const SizedBox(height: 15.0,),


                      GestureDetector(
                         onTap: (){
                           Get.toNamed(AppRoute.therapist_screen);
                         },
                         child: Container(
                           alignment: Alignment.center,
                           height: 75.0,
                           width:double.maxFinite,
                           decoration: BoxDecoration(
                                   borderRadius: const BorderRadius.all(Radius.circular(12.0),),
                                   border: Border.all(width: 1.0,color: AppColors.primaryColor),
                           ),

                           child: ListTile(

                                leading: Container(
                                  height: 42.0,
                                  width: 42.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(AppImage.doctorIamge),
                                ),

                                title: const CustomText(
                                  textAlign: TextAlign.start,
                                  text:"Choose a therapist and see their profile here",
                                  color: AppColors.timeBlack,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                           ),

                         ),
                       ),


                      const SizedBox(height: 28,),


                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[ CustomText(
                          textAlign: TextAlign.start,
                          text: AppString.yourTherapyMehod,
                          color: AppColors.blackColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                        ]
                      ),

                      const SizedBox(height: 12.0,),


                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.audio_call);
                        },
                          child: const CustomContainer(title: AppString.call, sub_title: AppString.startRightNow, icon:Icon(Icons.phone,color: AppColors.primaryColor,),)),

                          const SizedBox(height: 12.0,),

                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.vedio_calling_page);
                          //Get.snackbar("","Vedio call");
                        },
                          child: const CustomContainer(title:AppString.videoCall, sub_title: AppString.startRightNow, icon:Icon(Icons.videocam_sharp,color:AppColors.primaryColor) ,)),

                         const SizedBox(height: 12.0,),

                      GestureDetector(
                          onTap: (){
                           // Get.snackbar("","Messaging");
                            Get.toNamed(AppRoute.chat_list_page);
                          },
                          child: const CustomContainer(title:AppString.messaging, sub_title: AppString.startRightNow, icon:Icon(Icons.message_rounded,color:AppColors.primaryColor) ,)),

                      //


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
