import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.title, required this.sub_title,required this.icon});

final String title;
final String sub_title;
final  Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 96.0,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0,),),
      ),
      child: ListTile(
          leading: Container(
             height: 65.0,
             width: 65.0,
            decoration: BoxDecoration(
              color:AppColors.whiteLight,
              shape:BoxShape.circle,
            ),
            child:icon,
            //SvgPicture.asset(icon,alignment: Alignment.center,color: AppColors.primaryColor,height: 10.0,width: 10.0,),


      ),

        title: CustomText(
          textAlign: TextAlign.start,
          text:title,
          color: AppColors.whiteLight,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),

        subtitle: CustomText(
          textAlign: TextAlign.start,
          text:sub_title,
          color: AppColors.whiteLight,
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
        ),

      ),
    );
  }
}
