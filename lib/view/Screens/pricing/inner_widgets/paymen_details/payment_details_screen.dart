import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:dr_therapy/view/widgets/text/title_text.dart';
import 'package:dr_therapy/view/widgets/text_field/custom_text_field.dart';
import 'package:dr_therapy/view/widgets/text_field/custom_text_field1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CustomText(text: AppString.totalDueToday,color: AppColors.blackColor,fontWeight: FontWeight.w600,fontSize: 18,),
               Row(
                 children: [
                   SizedBox(
                     width: 141.67,
                     height: 34,
                     child: Stack(
                       children: [
                         Positioned(
                           left: 37,
                           top: 1,
                           child: CustomText(
                             text: '1600',
                             textAlign: TextAlign.center,
                             color: AppColors.primaryColor,
                             fontSize: 28,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                         Positioned(
                           child: CustomText(
                             text: 'Bwp',
                             textAlign: TextAlign.center,
                             color: AppColors.primaryColor,
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ],
                     ),
                   ),

                 ],
               ),

             ],
           ),
          const Divider(color: AppColors.timeBlack,),
          const Center(child: TitleText(text: AppString.paymentDetails,fontWeight: FontWeight.w600,color: AppColors.blackColor,fontSize: 24,textAlign: TextAlign.center,)),
              
              const CustomText(text: "Email",color: AppColors.blackColor,fontWeight: FontWeight.w600,fontSize: 16,bottom: 10,),
              const CustomTextField(
                fillColor: AppColors.whiteLight,
                cursorColor: AppColors.gray6,
                fieldBorderColor: AppColors.cardBorderGray,
                hintText: "Enter your Email" ,
                hintStyle:TextStyle(color: AppColors.timeBlack,fontWeight: FontWeight.w400,fontSize: 16),
              ),

          
          const CustomText(text: "Card Number",color: AppColors.blackColor,fontWeight: FontWeight.w600,fontSize: 16,bottom: 10,),
          const CustomTextField(
            fillColor: AppColors.whiteLight,
            cursorColor: AppColors.gray6,
            fieldBorderColor: AppColors.cardBorderGray,
            hintText: "Enter Card Number" ,
            hintStyle:TextStyle(color: AppColors.timeBlack,fontWeight: FontWeight.w400,fontSize: 16),
          ),

          
          const CustomText(text: "Expiration",color: AppColors.blackColor,fontWeight: FontWeight.w600,fontSize: 16,bottom: 10,),
          const CustomTextField(
            fillColor: AppColors.whiteLight,
            cursorColor: AppColors.gray6,
            fieldBorderColor: AppColors.cardBorderGray,
            hintText: "mm/yy" ,
            hintStyle:TextStyle(color: AppColors.timeBlack,fontWeight: FontWeight.w400,fontSize: 16),
          ),
          
          const CustomText(text: "Country",color: AppColors.blackColor,fontWeight: FontWeight.w600,fontSize: 16,bottom: 10,),
          const CustomTextField(
            fillColor: AppColors.whiteLight,
            cursorColor: AppColors.gray6,
            fieldBorderColor: AppColors.cardBorderGray,
            hintText: "Select" ,
            hintStyle:TextStyle(color: AppColors.timeBlack,fontWeight: FontWeight.w400,fontSize: 16),
          ),
            SizedBox(height: 24,),
           CustomElevatedButton(onPressed: (){}, titleText: AppString.authorizePayment)

        ],
      ),
    );
  }
}
