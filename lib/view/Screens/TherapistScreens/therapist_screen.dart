import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/Screens/DoctorParrt/DoctorProfile/doctor_profile.dart';
import 'package:dr_therapy/view/widgets/appbar/custom_app_bar.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TherapistPage extends StatefulWidget {
  const TherapistPage({super.key});

  @override
  State<TherapistPage> createState() => _TherapistPageState();
}

class _TherapistPageState extends State<TherapistPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
             body: Column(
               children: [
                 SizedBox(height: 13.0,),

                 Padding(
                   padding:  EdgeInsets.only(left: 20.0,right: 20.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       // Back Button


                       IconButton(onPressed:(){Get.back();}, icon:Icon(Icons.arrow_back_ios),),



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

                 SizedBox(height: 13.0,),

                 Divider(height: 1.0,color:AppColors.borderColor,thickness:1.0),

                 SizedBox(height: 22.0,),

                 const Padding(
                   padding: EdgeInsets.only(left: 20.0,),
                   child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                       CustomText(
                         text: AppString.therapist,
                         color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                         fontSize: 20.0,

                       ),
                   ]),
                 ),

                const SizedBox(height: 25.0,),


                 //Doctor List

                 Expanded(
                   child: ListView.builder(
                     physics: BouncingScrollPhysics(),
                     itemCount: 12,
                     itemBuilder:(context, index){

                       return Padding(
                             padding: EdgeInsets.all(20.0),

                             child: InkWell(
                               onTap: (){
                                 Get.to(DoctorProfile());
                                // Get.snackbar("", "$index",);
                               },
                               child: Container(
                               height: 170.0,
                               width: double.maxFinite,
                               decoration:BoxDecoration(
                               color: AppColors.cardBackgroundGray,
                               border: Border.all(color: AppColors.borderColor,width: 1.0,),
                                 borderRadius: BorderRadius.all(Radius.circular(10.0))
                           ),

                               child: Padding(
                                        padding: EdgeInsets.all(10.0),

                                        child: Row(
                                        children: [

                                          //Doctor Image

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                            height:56.0,
                                            width: 56.0,
                                            decoration:const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                            ),
                                            child:
                                            Image.asset(
                                            AppImage.todaysPetains,
                                            ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(width: 15.0,),


                                        //Doctore Information


                                         Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            //Doctor Name

                                          const CustomText(
                                            text: AppString.nickName,
                                            color: AppColors.blackColor,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w600,
                                          ),


                                            const SizedBox(height: 8.0,),

                                            //Designation
                                            const CustomText(
                                              text:"Designation",
                                              color:AppColors.timeBlack,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.0,

                                            ),


                                            const SizedBox(height: 8.0,),

                                            //Scedual date

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                               SvgPicture.asset(AppIcons.eventIcon,height: 18.0,width: 18.0,),

                                               const SizedBox(width: 8.0,) ,

                                                const CustomText(
                                                 text:"23.12.2023",
                                                  color: AppColors.blackColor,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ],
                                            ),

                                            const SizedBox(height: 8.0,),


                                            //Online consultation
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                               SvgPicture.asset(AppIcons.onlineConsultationIcon,height: 18.0,width: 18.0,),

                                               const SizedBox(width: 8.0,) ,

                                                const CustomText(
                                                 text:"Online Consultation ",
                                                  color: AppColors.blackColor,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ],
                                            ),

                                            const SizedBox(height: 8.0,),
                                            //Doctor fee
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                               SvgPicture.asset(AppIcons.badgetDollerIcon,height: 18.0,width: 18.0,),

                                               const SizedBox(width: 8.0,) ,

                                                const CustomText(
                                                 text:"\$ 20.0",
                                                  color: AppColors.blackColor,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
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
                       );
                   },
                   ),
                 ),


                 //Doctor List



               ],
             ),
      ),
    );
  }
}
