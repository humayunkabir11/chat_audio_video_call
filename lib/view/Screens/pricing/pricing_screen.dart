import 'package:dr_therapy/Controller/pricing_controller.dart';
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/view/screens/pricing/inner_widgets/choose_plan_dialoge.dart';
import 'package:dr_therapy/view/screens/pricing/inner_widgets/paymen_details/payment_details_screen.dart';
import 'package:dr_therapy/view/screens/pricing/inner_widgets/review_details.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:dr_therapy/view/widgets/text/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PeicingScreen extends StatefulWidget {
  const PeicingScreen({super.key});

  @override
  State<PeicingScreen> createState() => _PeicingScreenState();
}

class _PeicingScreenState extends State<PeicingScreen> {

  List plan = ["Choose Plan","Reviews Details","Checkout"];
  int selectedIndex  =PricingController().pageViewIndex;

  int selected =  0;
  List billingPlan =  ["Weekly","Monthly","Querterly"];

  //List pageViewPages=[choosePlanpart(),reviewDetails(),];

  bool isSelected =false;

  final _pageController = PageController(initialPage:0);
  void _onPlaceBidButtonPress(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.bounceIn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: AppColors.whiteLight,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset("assets/icons/drwareicon.svg"),
                Image.asset(
                  "assets/images/applogo.png",
                  height: 60,
                ),
                SvgPicture.asset(AppIcons.settingsIcon),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(4.0),
                child: Container(
                  color: AppColors.borderColor,
                  height: 1.0,
                ))),
      backgroundColor: AppColors.whiteLight,
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleText(text: AppString.pricingPlans,color: AppColors.blackColor,fontSize: 30,),
            const CustomText(text: AppString.individualTherapy,color: AppColors.timeBlack,fontSize: 18,fontWeight: FontWeight.w600,top: 12,bottom: 16,),

            //Top three button

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(plan.length, (index){

                return GestureDetector(
                  onTap: (){

                    // setState(() {
                    //
                    //    // selectedIndex =index;
                    //    //
                    //  //  _onPlaceBidButtonPress(selectedIndex);
                    // });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal:16.0),
                    decoration: BoxDecoration(
                      color: selectedIndex == index ? AppColors.primaryColor:AppColors.whiteLight,
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: CustomText(
                      text: plan[index],
                      color:  selectedIndex == index ?AppColors.whiteLight: AppColors.timeBlack,
                      fontWeight:FontWeight.w600 ,
                      fontSize: 12,
                    ),
                  ),
                );
              }),
            ),


             const SizedBox(height: 24,),

                  Expanded(
                      child:PageView(
                        controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),

                    children: [
                      isSelected?choosePlanpart():choosePlan(),
                      reviewDetails(),
                      const PaymentDetailsScreen(),
                    ],
                  ))
          ],
        ),
      ),

    );
  }

   choosePlan() {
    return SingleChildScrollView(
      child: Column(
                children: List.generate(3,(index){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected =!isSelected;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      margin: const EdgeInsets.only(top: 24),
                      decoration: BoxDecoration(
                        color: AppColors.whiteLight,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.borderColor),
                      ),
                      child:  Column(
                        children: [
                          const TitleText(text: AppString.messagingTherapy,fontSize: 20,fontWeight: FontWeight.w600,color: AppColors.blackColor,top: 12,bottom: 12,),
                          const CustomText(bottom:24,text: "Unlimited text, voice, and video message. Guaranteed Daily Response 5 day/week.",color: AppColors.timeBlack,fontSize: 16,fontWeight: FontWeight.w400,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
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
                                        color: Color(0xFF0C5240),
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Positioned(
                                      child: CustomText(
                                        text: 'Bwp',
                                        textAlign: TextAlign.center,
                                        color: Color(0xFF0C5240),
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
                                        color: Color(0xFF0C5240),
                                        fontSize: 15.87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 29),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF54A630),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                                child: const CustomText(
                                  text: 'Select Plan',
                                  textAlign: TextAlign.center,
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),


                            ],
                          ),

                        ],
                      ),
                    ),
                  );
                }),
              ),
    );
  }

   //Chose  plan Dialog

  choosePlanpart(){
    return Padding(
      padding: EdgeInsets.only(left: 5.0,right: 5.0),
      child: Container(
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
            const SizedBox(height:14.0,),
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
                            margin: const EdgeInsets.only(top: 12,right: 40),
                            height : 20,
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
            const SizedBox(height:16,),
            CustomElevatedButton(
              onPressed: (){
             setState(() {
                _pageController.nextPage(duration:Duration(seconds:1) ,curve: Curves.ease);
                selectedIndex=1;
              /* _onPlaceBidButtonPress(selectedIndex);
               selectedIndex = isSelected ? const ReviewDetails(): _choosePlan();*/
             });
            }, titleText: "Continue",buttonColor: AppColors.whiteLight,titleColor: AppColors.blackColor,buttonWidth: MediaQuery.of(context).size.width*0.6,),

          ],
        ),
      ),
    );
  }

   //Reviw  details

  reviewDetails(){

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.0,right: 5.0),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(24),

            ),
            child:   Column(
              children: [
                const TitleText(text:AppString.reviewYourPlan,fontSize: 20,fontWeight: FontWeight.w600,color: AppColors.whiteLight,top: 12,bottom: 12,),

                CustomElevatedButton(onPressed: (){setState(() {
                  _pageController.nextPage(duration:Duration(seconds:1) ,curve: Curves.ease);
                  selectedIndex=2;

                });}, titleText: "Continue",buttonColor: AppColors.whiteLight,titleColor: AppColors.blackColor,buttonWidth: MediaQuery.of(context).size.width*0.6,),

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
        ),

        const SizedBox(height:50.0),


        //Change Plan Button

        GestureDetector(
          onTap: (){
          setState(() {
            selectedIndex=0;
            _pageController.previousPage(duration:Duration(seconds: 1), curve:Curves.ease);
          });
          },
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
