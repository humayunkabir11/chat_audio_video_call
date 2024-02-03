import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_routes/app_route.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/Screens/Chat_list/chat_list.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DrwareTwo extends StatelessWidget {
  const DrwareTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
                width: 300.0,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10.0,),

                      Padding(
                        padding: const EdgeInsets.only(right: 55.0,left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            IconButton(onPressed: (){
                             // navigator?.pop();
                               Get.back();
                            },icon:SvgPicture.asset(AppIcons.toggleIcon),),
                            const CustomText(
                              text: AppString.menu,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 24.0,

                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30.0,),


                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 43.0,
                                  width: 43.0,
                                  child:
                                  Image.asset(AppImage.profileImage),

                                ),
                              ]
                            ),
                            const SizedBox(width: 13.0,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CustomText(
                                  text:"Amrin Akter",
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w600,
                                   fontSize: 18.0,
                                ),
                                const CustomText(
                                  text: "amrin@gmail.com",
                                  color: AppColors.blackColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),

                                const SizedBox(height: 10.0,),

                                //Profile Eedit Button

                                GestureDetector(
                                  onTap: (){
                                    Get.snackbar("", " Tap on edit");
                                  },
                                  child: Container(
                                    height:29.0,
                                    width: 69.0,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(25.0,),),
                                      border: Border.all(width: 2.0,color: AppColors.primaryColor),

                                    ),
                                    child: const CustomText(
                                      text: AppString.edit,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),


                      const SizedBox(height: 22.0,),

                      Container(
                        height: 1,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: AppColors.borderColor,
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),

                        child: Column(

                          children: [
                            const SizedBox(height: 20.0,),

                            //Massage option
                            GestureDetector(
                              onTap: (){
                               Get.to(const ChatList());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                       color: AppColors.drwareItemBackgroundColor,
                                       borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.massageIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                     text: AppString.messages,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            //Billing option

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap on Billing ");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.pricingIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.billing,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            //Contact OPtion

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap on Contact ");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.contactIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.contactUs,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            //Refer Option

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap on Refer ");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.raferIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.referAFriend,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),


                                ],
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            //Ratting option

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap on Ratting ");
                                Get.toNamed(AppRoute.review_screen);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.rattingIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.rateThisApp,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),


                                ],
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            //Support Option

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap  on Support ");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.supportIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.support,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),


                                ],
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            //Sharing option

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap on  Share ");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.sharingIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.share,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),


                                ],
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 14.0,),

                            //About option

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap on About ");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.aboutIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.about,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),


                                ],
                              ),
                            ),

                            const SizedBox(height:10.0),

                            Container(
                              height: 1,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: AppColors.borderColor,
                              ),
                            ),

                            const SizedBox(height: 10.0,),

                            //Sign out option

                            GestureDetector(
                              onTap: (){
                                Get.snackbar("","Tap on  Sign out ");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 34.0,
                                    width: 34.0,
                                    decoration:const BoxDecoration(
                                      color: AppColors.drwareItemBackgroundColor,
                                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                    ),
                                    child:Center(
                                        child:
                                        SvgPicture.asset(
                                          AppIcons.signOutIcon,
                                          width: 18.0,
                                          height: 18.0,
                                        )
                                    ),
                                  ),

                                  const SizedBox(width: 12.0,),

                                  const CustomText(
                                    text: AppString.signOut,
                                    color: AppColors.timeBlack,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),


                                ],
                              ),
                            ),

                            const SizedBox(height: 16.0,),


                          ],
                        ),
                      ),

                    ],
                  ),
                )

    );
  }
}

