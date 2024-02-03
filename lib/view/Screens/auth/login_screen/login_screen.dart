import 'dart:ui';
import 'package:dr_therapy/Controller/SIgnInController/sign_in_controller.dart';
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_routes/app_route.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:dr_therapy/view/widgets/text/title_text.dart';
import 'package:dr_therapy/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(SignInController());
    return SafeArea(
      child: Scaffold(

        body: GetBuilder<SignInController>(
          builder: (controller) {
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Image.asset(
                    "assets/images/logo_image.png",
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 100),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      gradient: LinearGradient(
                        begin: Alignment(-0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF1A712A), Color(0xFF00597B)],
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding:
                          const EdgeInsets.only(top: 24, left: 20, right: 20),
                      child: Column(
                        children: [
                          const TitleText(
                            text: AppString.welcomeText,
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                          ),
                          const CustomText(
                            text: AppString.subWellcomText,
                            bottom: 50,
                            top: 12,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteLight,
                          ),

                          //Email Feild

                          CustomTextField(
                            textEditingController: controller.emailController,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.emailController.clear();
                                },
                                icon: SvgPicture.asset(
                                  AppIcons.crossIcon,
                                  color: AppColors.whiteLight,
                                  height: 20.0,
                                  width: 20.0,
                                )),
                            suffixIconColor: AppColors.whiteLight,
                            hintText: AppString.Email,
                            textInputAction: TextInputAction.next,
                            hintStyle: GoogleFonts.openSans(
                              color: AppColors.whiteLight,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            inputTextStyle: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.whiteLight,
                            ),
                          ),

                          const SizedBox(
                            height: 16,
                          ),

                          //PassWord Feild

                          CustomTextField(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  controller.obsc = !controller.obsc;
                                });
                                ;
                                print(controller.obsc);
                              },
                              icon: Icon(
                                controller.obsc
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.whiteLight,
                              ),
                            ),
                             obscure: controller.obsc,
                            textInputAction: TextInputAction.done,
                            hintText: AppString.password,
                            hintStyle: GoogleFonts.openSans(
                                color: AppColors.whiteLight,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            inputTextStyle: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.whiteLight,
                            ),
                          ),

                          const Align(
                            alignment: Alignment.topRight,
                            child: CustomText(
                              text: AppString.forgatePassword,
                              top: 8,
                              bottom: 40,
                              color: AppColors.extraRed,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          CustomElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRoute.homescreenmain);
                            },
                            titleText: AppString.signIn,
                            buttonColor: AppColors.whiteLight,
                            titleColor: AppColors.blackColor,
                            buttonWidth: MediaQuery.of(context).size.width,
                          ),

                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: CustomElevatedButton(
                                onPressed: () {},
                                titleText: AppString.facebook,
                                buttonColor: AppColors.whiteLight,
                                titleColor: AppColors.blackColor,
                                sizeboxWidth: 12,
                                child: SvgPicture.asset(AppIcons.facebookIcon),
                                // child:  Icon(Icons.facebook),
                              )),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                  child: CustomElevatedButton(
                                onPressed: () {},
                                buttonColor: AppColors.whiteLight,
                                titleColor: AppColors.blackColor,
                                titleText: AppString.Google,
                                sizeboxWidth: 12,
                                child: SvgPicture.asset(AppIcons.googleIcon),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: AppString.donotHaveAnAccount,
                                  style: GoogleFonts.openSans(
                                    color: AppColors.whiteLight,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF1DA822),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(AppRoute.signUpScreen);
                                    },
                                  text: AppString.createNew,
                                  style: GoogleFonts.openSans(
                                    color: const Color(0xFFFF7364),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
