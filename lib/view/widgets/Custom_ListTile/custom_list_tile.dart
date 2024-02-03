import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.maxFinite,
      child: ListTile(

        leading: Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,

          ),
          child: Image.asset(AppImage.doctorIamge),

        ),

        title:  const CustomText(
          text: "Hasib-ul Hasan Shanto ",
          textAlign: TextAlign.start,
          color: AppColors.blackColor,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),

        subtitle: const CustomText(
          textAlign: TextAlign.start,
          text: "How are yopu ?",
          color: AppColors.timeBlack,
          fontWeight: FontWeight.w400,
          fontSize: 15.0,

        ),

        trailing: const CustomText(
          text: "1 min",
          color: AppColors.timeBlack,
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
