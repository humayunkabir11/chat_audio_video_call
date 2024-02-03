import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
 const  CustomTextField({
    this.textEditingController,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.cursorColor = AppColors.whiteLight,
    this.inputTextStyle,
    this.textAlignVertical = TextAlignVertical.center,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.maxLines = 1,
    this.validator,
    this.hintText,
    this.hintStyle,
    this.fillColor = AppColors.fillColor,
    this.suffixIcon,
    this.suffixIconColor,
    this.fieldBorderRadius = 40,
    this.fieldBorderColor = AppColors.cardBackgroundGray,
    this.isPassword = false,
    this.isPrefixIcon = false,
    this.prefixIconColor,
    this.prefixIconSrc,
    this.readOnly = false,
    this.onTap,
    this.inputFormatters,
    this.maxLength,
   this.obscure = false,
    super.key,
  }
  );

  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Color cursorColor;
  final TextStyle? inputTextStyle;
  final TextAlignVertical? textAlignVertical;
  final TextAlign textAlign;
  final int? maxLines;
  final void Function(String)? onChanged;
  final FormFieldValidator? validator;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final Color? suffixIconColor;
  final Widget? suffixIcon;
  final double fieldBorderRadius;
  final Color fieldBorderColor;
  final bool isPassword;
  final bool isPrefixIcon;
  final String ?prefixIconSrc;
  final Color ? prefixIconColor;
  final bool readOnly;
  final VoidCallback? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final int ?maxLength;
  final  bool obscure;


  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.maxLength,

      inputFormatters: widget.inputFormatters,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: widget.readOnly,
      controller: widget.textEditingController,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      cursorColor: widget.cursorColor,
      style: widget.inputTextStyle,
      onChanged: widget.onChanged,
      maxLines: widget.maxLines,
      obscureText: widget.obscure,
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all( 20),
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        fillColor: widget.fillColor,
        filled: true,
        suffixIcon:widget.suffixIcon,
        counterText: "",
        // prefixIcon: widget.isPrefixIcon ? Padding(
        //   padding:  const EdgeInsetsDirectional.only(start: 0, top: 10, bottom: 10, end: 0),
        //   child: SvgPicture.asset(widget.prefixIconSrc ?? "", color: widget.prefixIconColor),
        // ) : null,
        // prefixIconColor: widget.prefixIconColor,
        // suffixIcon: widget.isPassword ? GestureDetector(
        //     onTap: toggle,
        //     child: Padding(
        //       padding: const EdgeInsetsDirectional.only(start: 16, top: 16, bottom: 16, end: 16),
        //       child: SvgPicture.asset(
        //           (obscureText ? AppIcons.inVisibleIcon : AppIcons.visibleIcon) as String,color: AppColors.whiteNormalActive,height: 14,),
        //     )
        // ) : Padding(
        //   padding: const EdgeInsetsDirectional.only(start: 16, top: 16, bottom: 16, end: 16),
        //   child: widget.suffixIcon,
        // ),
        suffixIconColor: widget.suffixIconColor,

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
            borderSide: BorderSide(color: widget.fieldBorderColor, width: 1),
            gapPadding: 0),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
            borderSide: BorderSide(color: widget.fieldBorderColor, width: 1),
            gapPadding: 0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
            borderSide: BorderSide(color: widget.fieldBorderColor, width: 1),
            gapPadding: 0),
      ),
      onTap: widget.onTap,
    );
  }

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
