import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:flutter/material.dart';

class CallTimeProfie extends StatelessWidget {
  const CallTimeProfie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 242,
      width: 242,
      decoration:  BoxDecoration(

        color:Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(width:0.2,color: AppColors.primaryGreen),

      ),

      child: Container(
        alignment: Alignment.center,
        height: 191.0,
        width: 191.0,
        decoration: BoxDecoration(
          color:Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(width: .5,color:AppColors.primaryGreen,),
        ),

        child: Container(
          alignment: Alignment.center,
          height: 136.0,
          width: 136.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(width: 1.5,color: AppColors.primaryGreen),
            shape: BoxShape.circle,
          ),
          child: Container(
            alignment: Alignment.center,
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              color:Colors.transparent,
              border: Border.all(width: 2.0,color: AppColors.whiteLight,),
              shape: BoxShape.circle,
            ),
            child: Image.asset(AppImage.doctorIamge,),

          ),
        ),
      ),


    );
  }
}
