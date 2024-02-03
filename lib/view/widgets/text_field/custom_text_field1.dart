

import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextField111 extends StatefulWidget {

  const CustomTextField111({
    this.textEditingController,
    this.focusNode,
    this.nextFocus,
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
    this.isPassword = false,
    this.isPrefixIcon = false,
    this.prefixIconColor,
    this.prefixIconSrc,
    this.readOnly = false,
    this.onTap,
    this.inputFormatters,
    this.maxLength,
    required this.title,

    //required this.errorText,
    super.key
  });

  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
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
  final  Widget? suffixIcon;
  final double fieldBorderRadius;
  final bool isPassword;
  final bool isPrefixIcon;
  final String? prefixIconSrc;
  final Color? prefixIconColor;
  final bool readOnly;
  final VoidCallback? onTap;
  final String title;
  final int ? maxLength;

  final List <TextInputFormatter> ?inputFormatters ;
  //final String errorText;
  @override
  State<CustomTextField111> createState() => _CustomTextField111State();
}

class _CustomTextField111State extends State<CustomTextField111> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteLight
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
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
          obscureText: widget.isPassword ? obscureText : false,
          validator: widget.validator,

          decoration: InputDecoration(
            //errorText: widget.errorText,
            contentPadding: EdgeInsets.all(20),
            counterText: "",
            suffixIcon: widget.suffixIcon,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle,
            fillColor: widget.fillColor,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
                borderSide: const BorderSide(color: AppColors.borderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
                borderSide: const BorderSide(color: AppColors.borderColor, width: 1),
             ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
                borderSide: const BorderSide(color: AppColors.borderColor, width: 1),
            ),
          ),
          onTap: widget.onTap,
        ),
      ],
    );
  }

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
