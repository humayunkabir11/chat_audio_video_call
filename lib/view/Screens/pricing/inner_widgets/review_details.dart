import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utils/app_color/app_color.dart';
import '../../../widgets/text/title_text.dart';

class ReviewDetails extends StatefulWidget {
  const ReviewDetails({super.key});

  @override
  State<ReviewDetails> createState() => _ReviewDetailsState();
}

class _ReviewDetailsState extends State<ReviewDetails> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(24),
        
          ),
          child:   Column(
            children: [
              const TitleText(text:AppString.reviewYourPlan,fontSize: 20,fontWeight: FontWeight.w600,color: AppColors.whiteLight,top: 12,bottom: 12,),
        
              CustomElevatedButton(onPressed: (){}, titleText: "Continue",buttonColor: AppColors.whiteLight,titleColor: AppColors.blackColor,buttonWidth: MediaQuery.of(context).size.width*0.6,),
        
              const SizedBox(height: 24,),
              const Divider(color: AppColors.whiteLight,),
              const SizedBox(height: 24,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Summary",color: AppColors.whiteLight,
                        fontSize: 18,fontWeight: FontWeight.w600,textAlign: TextAlign.start,),
                      CustomText(text: "Monthly package\n (4* 450)",color: AppColors.whiteLight,
                        top: 12,
                        fontSize: 14,fontWeight: FontWeight.w600,textAlign: TextAlign.start,),
                      CustomText(text: "Messaging therapy \n5days a week.",color: AppColors.whiteLight,
                        fontSize: 14,fontWeight: FontWeight.w600,textAlign: TextAlign.start,),
                    ],
                  ),
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
                                text: '600',
                                textAlign: TextAlign.center,
                                color: Color(0xFFffffff),
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Positioned(
                              child: CustomText(
                                text: 'Bwp',
                                textAlign: TextAlign.center,
                                color: Color(0xFFffffff),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Positioned(
                              left: 94,
                              top: 14,
                              child: CustomText(
                                text: '/week',
                                textAlign: TextAlign.center,
                                color: Color(0xFFffffff),
                                fontSize: 15.87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ), 
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height:50.0),
        GestureDetector(
          child: Row(
            children: [
              const CustomText(text: AppString.changeSubscriptionPlan,color: AppColors.primaryColor,fontSize: 16,fontWeight: FontWeight.w600,right: 12,),
              SvgPicture.asset("assets/icons/arrow.svg"),
            ],
          ),
        ),
      ],
    );
  }
}
