
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';


class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final double titleSize;
  final FontWeight titleWeight;
  final double buttonRadius;
  final double buttonHeight;
  final double? buttonWidth;
  final TextAlign textAlign;
  final bool isBorder;
  final Widget? child;
  final double sizeboxWidth;

  const CustomElevatedButton(
      {this.textAlign = TextAlign.center,
        required this.onPressed,
        required this.titleText,
        this.titleColor = AppColors.whiteLight,
        this.buttonColor = AppColors.primaryGreen,
        this.titleSize = 18,
        this.buttonRadius = 40,
        this.titleWeight = FontWeight.w600,
        this.buttonHeight = 52,
        this.buttonWidth,
        this.isBorder = false,
        this.child,
        this.sizeboxWidth = 0.0,
        super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 0.0,right: 0.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            shape: MaterialStateProperty.all(
              isBorder ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius),
                side: const BorderSide(color: AppColors.primaryColor)
              ) : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius),
              ),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(child: child),
              SizedBox(width: sizeboxWidth,),
              CustomText(
                text: titleText,
                textAlign: textAlign,
                fontSize: titleSize,
                fontWeight: titleWeight,
                color: titleColor,
              ),


            ],
          ),
        ),
      ),
    );
  }
}