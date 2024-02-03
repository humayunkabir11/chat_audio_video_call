import 'dart:math';

import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class VedioCallPage extends StatefulWidget {
  const VedioCallPage({super.key});

  @override
  State<VedioCallPage> createState() => _VedioCallPageState();
}
double left = 0;
double dragabbleHorizontal = 20;
double dragabbleVerticel = 70;
class _VedioCallPageState extends State<VedioCallPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
             body: Stack(
               children: [
                 Positioned(
                   right: dragabbleHorizontal,
                   top: dragabbleVerticel,
                   child: GestureDetector(
                     onPanUpdate: (details) async {
                       dragabbleHorizontal = max(0, dragabbleHorizontal - details.delta.dx);
                       print(dragabbleHorizontal);
                       dragabbleVerticel =
                           max(dragabbleVerticel + details.delta.dy, 0);
                       setState(() {});
                     },
                     child: Container(
                       height: 165.0,
                       width: 115,
                       decoration: const BoxDecoration(
                         borderRadius:BorderRadius.all(Radius.circular(20.0)),
                       ),
                       child: Image.asset(AppImage.damy_image),
                     ),
                   ),
                 ),
                 const Positioned(
                   top: 48.0,
                   left: 155.0,
                   right: 155.0,
                   child: CustomText(
                     maxLines: 1,
                     textAlign: TextAlign.center,
                     text: "10:08",
                     color:AppColors.blackColor,
                     fontWeight:FontWeight.w600,
                     fontSize: 14.0,
                   ),
                 ),




              ]
             ),

      );
  }
}
