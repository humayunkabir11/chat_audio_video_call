import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  final double appBarHeight;
  final double ? appBarWidth;
  final double left;

  final double bottom;
  final double top;
  final double right;
  final Color appBarBgColor;
  final Widget appBarContent;

  const CustomAppBar({
    this.appBarHeight = 64,
    this.appBarWidth,
    this.appBarBgColor = Colors.transparent,
    required this.appBarContent,
    this.left =20,
    this.bottom =0,
    this.right = 20,
    this.top= 20,
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(appBarWidth ?? double.infinity, appBarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
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
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset("assets/icons/drwareicon.svg"),
            Image.asset("assets/images/applogo.png",height: 60,),
            CustomElevatedButton(onPressed: (){}, titleText: "Today",buttonHeight: 40,)
          ],
        ),
      ),
    );
  }
}
