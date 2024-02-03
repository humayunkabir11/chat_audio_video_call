import 'package:dr_therapy/Controller/pricing_controller.dart';
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:dr_therapy/view/widgets/text/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoosePlanDialog extends StatefulWidget {
  const ChoosePlanDialog({super.key});

  @override
  State<ChoosePlanDialog> createState() => _ChoosePlanDialogState();
}

class _ChoosePlanDialogState extends State<ChoosePlanDialog> {

  int selected =  0;
  List billingPlan =  ["Weekly","Monthly","Querterly"] ;        

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PricingController>(
      builder: (controller){
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(24),

          ),
          child:   Column(
            children: [
              const TitleText(text: AppString.messagingTherapy,fontSize: 20,fontWeight: FontWeight.w600,color: AppColors.whiteLight,top: 12,bottom: 12,),
              const CustomText(bottom:24,text: "Unlimited text, voice, and video message. Guaranteed Daily Response 5 day/week.",
                color: AppColors.whiteLight,fontSize: 16,fontWeight: FontWeight.w400,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width:140.67,
                    height: 35,
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
              const SizedBox(height: 14,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(text: AppString.chooseBillingCycle,color: AppColors.whiteLight,
                    fontSize: 18,fontWeight: FontWeight.w600,textAlign: TextAlign.start,),
                  Column(
                    children: List.generate(billingPlan.length, (index){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(top:12,text: billingPlan[index],color: AppColors.whiteLight,fontSize: 16,fontWeight: FontWeight.w400,),
                            Container(
                              margin: const EdgeInsets.only(top: 8,right: 40),
                              height : 16,
                              width: 20,
                              decoration:  BoxDecoration(
                                color:selected == index? AppColors.whiteLight: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all ( color:AppColors.whiteLight,width: 1),
                              ),
                            ),

                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              CustomElevatedButton(onPressed: (){
                setState(() {
                  controller.pageViewIndex=1;
                });
              }, titleText: "Continue",buttonColor: AppColors.whiteLight,titleColor: AppColors.blackColor,buttonWidth: MediaQuery.of(context).size.width*0.6,)

            ],
          ),
        );


      },
    );
  }
}
