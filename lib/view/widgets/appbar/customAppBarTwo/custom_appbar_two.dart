import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomAppBarTwo extends StatefulWidget implements PreferredSizeWidget{

  final double appBarHeight;
  final double ? appBarWidth;
  final double left;

  final double bottom;
  final double top;
  final double right;
  final Color appBarBgColor;

  const CustomAppBarTwo({
    this.appBarHeight = 64,
    this.appBarWidth,
    this.appBarBgColor = Colors.transparent,
    this.left =20,
    this.bottom =0,
    this.right = 20,
    this.top= 20,
    super.key,
  });

  @override
  State<CustomAppBarTwo> createState() => _CustomAppBarTwoState();

  @override
  Size get preferredSize => Size(appBarWidth ?? double.infinity, appBarHeight);
}

class _CustomAppBarTwoState extends State<CustomAppBarTwo> {
  @override
  Widget build(BuildContext context) {

    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding:   EdgeInsetsDirectional.only(start:widget.left, top:  widget.top, bottom: widget.bottom,end: widget.right),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: widget.appBarBgColor
        ),



        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const SizedBox(height: 13.0,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                     IconButton(onPressed: (){
                       Get.back();
                     }, icon:const Icon(Icons.arrow_back_ios,color: AppColors.blackColor,size: 21.0,)),

                    const CustomText(
                   text: AppString.CreatAccount,
                   textAlign: TextAlign.center,
                   color:AppColors.blackColor,
                   fontWeight: FontWeight.w600,
                   fontSize: 24.0,
                 ),

                    const SizedBox(height: 10.0,width: 10.0,),

            ],
          ),
        ]
        ),
      ),
    );
  }
}
