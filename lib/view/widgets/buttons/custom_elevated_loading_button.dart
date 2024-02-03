import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';

class CustomElevatedLoadingButton extends StatelessWidget {
  final Color buttonColor;
  final double buttonRadius;
  final double buttonHeight;
  final double? buttonWidth;

  const CustomElevatedLoadingButton({
        this.buttonColor = AppColors.primaryColor,
        this.buttonRadius = 8,
        this.buttonHeight = 56,
        this.buttonWidth,
        super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRadius),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        child: const SizedBox(
          height: 16, width: 16,
          child: CircularProgressIndicator(
            color: AppColors.whiteLight,
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}