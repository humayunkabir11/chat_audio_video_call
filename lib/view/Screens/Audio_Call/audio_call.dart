import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/CallTimeProfilePicture/call_time_profile.dart';
import 'package:dr_therapy/view/widgets/CustomCallingFeature/custom_calling_feature.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AudioCallPage extends StatefulWidget {
  const AudioCallPage({super.key});

  @override
  State<AudioCallPage> createState() => _AudioCallPageState();
}

class _AudioCallPageState extends State<AudioCallPage> {

     bool mute=false;
     bool chats=false;
     bool speaker=false;
     bool record=false;
     bool add=false;
     bool more=false;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
           backgroundColor: AppColors.seconderyDeepGreen,

           body: SingleChildScrollView(
             physics: const BouncingScrollPhysics(),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [

                 const SizedBox(height: 60.0,),
                   //profile picture

                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                       CallTimeProfie(),
                     ]
                   ),

                  const SizedBox(height: 30.0,),

                  //User Name

                  const CustomText(
                   maxLines: 2,
                   text:"Hasibul Hasan Shanto",
                   color: AppColors.whiteLight,
                   fontSize: 28.0,
                   fontWeight: FontWeight.bold,
                   textAlign: TextAlign.center,
                 ),

                  const SizedBox(height: 10.0,),

                //Recording icon + Deuration

                  Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   Container(
                     height: 20,
                     width: 20.0,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                     ),
                     child: record?SvgPicture.asset(AppIcons.record_icon):Container(),
                   ),

                   const SizedBox(width: 10.0,),

                   const CustomText(
                     textAlign: TextAlign.center,
                     text: "00:03:40",
                     color: AppColors.timeBlack,
                     fontWeight: FontWeight.w500,
                     fontSize: 17.0,

                   ),
                 ],
               ),
                  //Calling features

                 const SizedBox(height: 17.0,),

                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      //Mute button
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            mute=!mute;
                          });
                        },
                        child: CustomCallingFeature(
                            icon: SvgPicture.asset(
                              AppIcons.muteICon,
                              color: mute?AppColors.blackColor:AppColors.whiteLight,
                            ),
                            lebale: AppString.mute,
                           click: mute,
                        ),
                      ),

                       //Chats Icon

                      GestureDetector(
                          onTap: (){
                            setState(() {
                              chats=!chats;
                            });
                          },
                          child: CustomCallingFeature(icon:SvgPicture.asset(AppIcons.chat_icon,color: chats?AppColors.blackColor:Colors.white), lebale:AppString.chats,click:chats,)),

                      //Speaker Icon

                      GestureDetector(
                          onTap: (){
                            setState(() {
                              speaker=!speaker;
                            });
                          },
                          child: CustomCallingFeature(icon: SvgPicture.asset(AppIcons.speakerIcon,color: speaker?AppColors.blackColor:AppColors.whiteLight,),lebale: AppString.speaker,click: speaker,)),


                    ],
                  ),

                const SizedBox(height: 27.0,),


                  Row(

                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   //Microphone Icon
                   GestureDetector(
                       onTap: (){
                         setState(() {
                           record=!record;
                         });
                       },
                       child: CustomCallingFeature(icon: SvgPicture.asset(AppIcons.microphone_icon,color: record?AppColors.blackColor:AppColors.whiteLight,),lebale: AppString.record,click: record,)),

                   //Add Icon

                   GestureDetector(
                       onTap: (){
                         setState(() {
                           add=!add;
                         });
                       },
                       child: CustomCallingFeature(icon:SvgPicture.asset(AppIcons.addIcon,color: add?AppColors.blackColor:AppColors.whiteLight,), lebale:AppString.add,click:add,)),

                   //More Icon

                   GestureDetector(
                       onTap: (){
                         setState(() {
                           more=!more;
                         });
                       },
                       child: CustomCallingFeature(icon: SvgPicture.asset(AppIcons.moreIcon,color: more?AppColors.blackColor:AppColors.whiteLight,),lebale: AppString.more,click:more,)),
                 ],
               ),

                  const SizedBox(height: 50.0,),

               //Red Button

                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                    alignment: Alignment.center,
                     height: 65.0,
                     width: 65.0,
                     decoration:const BoxDecoration(
                          color:AppColors.redColor,
                          shape: BoxShape.circle
                     ),
                     child: SvgPicture.asset(AppIcons.phoneIcon),
                 ),
                  ),





             ],
             ),
           ),



    );
  }
}
