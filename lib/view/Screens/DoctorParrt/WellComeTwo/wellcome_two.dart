import 'package:dr_therapy/utils/app_routes/app_route.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WellComeTwoScreen extends StatelessWidget {
  const WellComeTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Stack(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
              Positioned(
                child: Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  height: 450.0,
                  decoration:  const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/backgroundimage.png"),fit: BoxFit.fill,),
                  ),
                  child:  Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0,top:40,right: 16),
                            child: Text(AppString.joinOtherTherapists,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 34.0,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 5,
                            ),
                          ),
                        ),
                      ] ),
                ),
              ),
              Positioned(
                left: 160,top: 350,
                child: Container(
                  alignment: Alignment.center,
                  height: 165.0,
                  width: 165.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.15),
                        shape: BoxShape.circle
                    ),
                    margin: const EdgeInsets.all(18),
                    height: 170,
                    width: 170,
                    child: const Image(image:AssetImage(AppImage.userImage,), //"assets/images/userimage.png",),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: 20,
                left: 20,
                child: Column(
                  children: [
                    CustomElevatedButton(onPressed: (){},
                      buttonWidth: MediaQuery.of(context).size.width,
                      titleText:AppString.apply,
                      titleColor: Colors.white,titleSize: 16,titleWeight: FontWeight.w600,),

                    const SizedBox(height: 16,),

                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:AppString.alreadySignedUp,
                            style: GoogleFonts.inter(
                              color: const Color(0xFF3B3B3B),
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

                            text: AppString.logIn,
                            style:  GoogleFonts.inter(
                              color: const Color(0xFFFF7364),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,

                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),

                    SizedBox(height: Get.height*0.1,),


                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}