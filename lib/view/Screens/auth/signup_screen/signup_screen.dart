import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_routes/app_route.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/view/screens/message/message_screen.dart';
import 'package:dr_therapy/view/widgets/appbar/customAppBarTwo/custom_appbar_two.dart';
import 'package:dr_therapy/view/widgets/appbar/custom_app_bar.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:dr_therapy/view/widgets/text/title_text.dart';
import 'package:dr_therapy/view/widgets/text_field/custom_text_field1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController dateController = TextEditingController();

  Future<void> dateofbirthPicker(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
      builder: (context, child) => Theme(
          data: Theme.of(context).copyWith(
            colorScheme:  const ColorScheme.light(
              primary: AppColors.primaryColor, // <-- SEE HERE
              onPrimary: AppColors.whiteLight, // <-- SEE HERE
              onSurface: AppColors.primaryColor, // <-- SEE HERE
            ),
          ),
          child: child!
      ),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != dateController.text) {
      dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteLight,
      appBar:CustomAppBarTwo(),
      //CustomAppBar(appBarContent: Row(
      //       children: [
      //         IconButton(onPressed: ()=>Get.back(), icon: const Icon(Icons.arrow_back_ios,color: AppColors.blackColor,size: 16,)),
      //         const TitleText(text: AppString.CreatAccount,color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w600,left: 24,),
      //       ],
      //
      // )),

      body: SingleChildScrollView(

        // const NeverScrollableScrollPhysics(),
     child: Column(
          children: [

            const CustomText(text: AppString.subTitleCreatAccount,color: AppColors.blackColor,fontSize: 16,bottom: 16,),

            Container(
              width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                gradient: LinearGradient(
                  begin: Alignment(-0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF1A712A), Color(0xFF00597B)],
                ),
              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
                child: Column(
                  children: [
                     CustomTextField111(title: AppString.Email,hintText: AppString.yourEmail,  inputTextStyle:GoogleFonts.openSans(
                        color: AppColors.whiteLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,

                    ),
                       textInputAction: TextInputAction.next,
                       hintStyle: GoogleFonts.openSans(color: AppColors.whiteLight,fontWeight: FontWeight.w400,fontSize: 16),
                     ),
                    const SizedBox(height: 12,),
                     CustomTextField111(title: AppString.password,hintText: AppString.yourPassword,  inputTextStyle:GoogleFonts.openSans(
                        color: AppColors.whiteLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 14
                    ),
                       textInputAction: TextInputAction.next,
                       hintStyle: GoogleFonts.openSans(color: AppColors.whiteLight,fontWeight: FontWeight.w400,fontSize: 16),
                     ),
                    const SizedBox(height: 12,),
                     CustomTextField111(title: AppString.nickName,hintText: AppString.yourNickName,  inputTextStyle:GoogleFonts.openSans(
                        color: AppColors.whiteLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                    ),
                       textInputAction: TextInputAction.done,
                       hintStyle: GoogleFonts.openSans(color: AppColors.whiteLight,fontWeight: FontWeight.w400,fontSize: 16),
                     ),
                    const SizedBox(height: 12,),

                    CustomTextField111(title: AppString.dateOfBirth,hintText: AppString.dateOfBirth,
                      suffixIcon:  const Icon(Icons.calendar_month_rounded,size: 24,color: AppColors.whiteLight,),
                      hintStyle: GoogleFonts.openSans(color: AppColors.whiteLight,fontWeight: FontWeight.w400,fontSize: 16),
                      textEditingController: dateController,

                      inputTextStyle:GoogleFonts.openSans(
                        color: AppColors.whiteLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 14
                      ),
                      readOnly: true,
                      onTap: (){
                        dateofbirthPicker(context);
                      },
                      cursorColor: AppColors.whiteLight,
                    ),
                    const SizedBox(height: 24 ,),
                    CustomElevatedButton(onPressed: (){
                       Get.toNamed(AppRoute.homescreenmain);
                     // Navigator.push(context, MaterialPageRoute(builder: (_)=>MessageScreen()));
                    }, titleText: AppString.signUp,
                      buttonColor: AppColors.whiteLight,titleColor: AppColors.blackColor,
                      buttonWidth: MediaQuery.of(context).size.width,

                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: CustomElevatedButton(onPressed: (){},
                          titleText: AppString.facebook, buttonColor: AppColors.whiteLight,titleColor: AppColors.blackColor,
                          sizeboxWidth: 12,
                          child: SvgPicture.asset(AppIcons.facebookIcon),
                          // child:  Icon(Icons.facebook),

                        )),
                        const SizedBox(width: 12,),
                        Expanded(child: CustomElevatedButton(onPressed: (){},
                          buttonColor: AppColors.whiteLight,titleColor: AppColors.blackColor,
                          titleText: AppString.Google, sizeboxWidth: 12 ,child: SvgPicture.asset(AppIcons.googleIcon),)),
                      ],
                    ),

                    const SizedBox(height: 35.0,),

                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: AppString.haveAnAccount,
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
                            recognizer: TapGestureRecognizer()..onTap = (){
                              Get.toNamed(AppRoute.signInScreen);
                            },
                            text: AppString.signIn,
                            style:  GoogleFonts.openSans(
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
      ),
    );
  }
}
