import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCallingFeature extends StatelessWidget {
  const CustomCallingFeature({super.key, required this.icon, required this.lebale, this.click=false});

  final bool click;
   final SvgPicture icon;
   final String lebale;
  @override
  Widget build(BuildContext context) {
    return Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
                  Container(
                    alignment: Alignment.center,
                    height: 63.0,
                    width: 63.0,
                    decoration: BoxDecoration(
                      color: click?AppColors.whiteLight:Colors.transparent,
                      border: Border.all(width: 1.5, color: AppColors.timeBlack),
                      shape: BoxShape.circle,
                    ),
                    child:icon,

                  ),

                      SizedBox(height: 7.0,),

                      CustomText(
                   text: lebale,
                   color: AppColors.timeBlack,
                   fontSize: 13.0,
                   fontWeight: FontWeight.w400,
                 ),
           ],

    );
  }
}
