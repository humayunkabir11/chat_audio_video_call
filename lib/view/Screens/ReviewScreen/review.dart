import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/CustomRattingBar/custom_ratting_bar.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: SingleChildScrollView(
             physics: BouncingScrollPhysics(),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[


                 const SizedBox(height: 55.0,),

                     const Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         CustomText(
                         textAlign: TextAlign.center,
                         text: AppString.howDid,
                         color: AppColors.blackColor,
                         fontWeight: FontWeight.w600,
                         fontSize: 24.0,

                       ),
                      ]
                     ),

                 const SizedBox(height: 40.0,),

                 //Imoji

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     //Sad Imoji

                     GestureDetector(
                     onTap: (){
                       Get.snackbar("","Sad");
                     },
                     child: Container(
                         height: 32.0,
                         width: 32.0,
                         child: Image.asset(AppImage.sad_imoji)),
                   ),

                     const SizedBox(width: 15.0,),

                     //Happy imoji

                     GestureDetector(
                       onTap: (){
                         Get.snackbar("","Happy");
                       },
                       child: SizedBox(
                           height: 32.0,
                           width: 32.0,
                           child: Image.asset(AppImage.happy_imoji)),
                     ),


                     const SizedBox(width: 15.0,),

                     // Love imoji

                     GestureDetector(
                       onTap: (){
                         Get.snackbar("","Love");
                       },
                       child: Container(
                           height: 32.0,
                           width: 32.0,
                           child: Image.asset(AppImage.love_imoji)),
                     ),

                   ],
                 ),

                    const SizedBox(height: 24.0,),

                    const CustomText(
                    text: AppString.Thankyou,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,

                  ),

                    const SizedBox(height: 24.0,),

                //Ratting Bar

                 CustomRattingBar(),

                   const SizedBox(height: 40.0,),

                 //Review write box

                   Container(
                   height: 120.0,
                   width: double.maxFinite,

                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(6.0)),
                     border: Border.all(color: AppColors.borderColor,width: 2.0,)
                   ),

                   child: const TextField(
                          maxLines: 10,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                         border: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                         errorBorder: InputBorder.none,
                         disabledBorder: InputBorder.none,
                         contentPadding:
                         EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                         hintText: AppString.writeYouReview,
                     ),
                   ),
                 ),


                   const SizedBox(height: 40.0,),

                 // Submit Button

                   GestureDetector(
                   onTap: (){
                     Get.snackbar("","Submit Uccessfully ");
                   },
                   child: Container(
                     alignment: Alignment.center,
                     height: 52.0,
                     width: double.maxFinite,
                     decoration: const BoxDecoration(
                               color: AppColors.primaryColor,
                               borderRadius: BorderRadius.all(Radius.circular(40.0,)),

                     ),
                     child: const CustomText(
                       text: AppString.submit,
                       color: AppColors.whiteLight,
                       fontWeight: FontWeight.w600,
                       fontSize: 17.0,

                     ),
                   ),
                 ),


                   const SizedBox(height: 15.0,),

                 //Skip button

                  GestureDetector(
                   onTap: (){
                     Get.snackbar("","skip");
                   },
                   child: Container(
                     alignment: Alignment.center,
                     height: 52.0,
                     width: double.maxFinite,
                     decoration: const BoxDecoration(
                       color: AppColors.cardBorderGray,
                       borderRadius: BorderRadius.all(Radius.circular(40.0,)),

                     ),
                     child: const CustomText(
                       text: AppString.skip,
                       color: AppColors.blackColor,
                       fontWeight: FontWeight.w600,
                       fontSize: 17.0,

                     ),
                   ),
                 ),


               ],
             ),
           ),
         ),


    );
  }
}
