import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class CustomRattingBar extends StatefulWidget {
  const CustomRattingBar({super.key});

  @override
  State<CustomRattingBar> createState() => _CustomRattingBarState();
}

class _CustomRattingBarState extends State<CustomRattingBar> {

  var ratting=0.0;
  @override
  Widget build(BuildContext context) {

    return SmoothStarRating(
      rating: ratting,
      allowHalfRating: false,
      borderColor: AppColors.primaryColor,
      color: AppColors.primaryColor,
      size: 45,
      starCount: 5,
      onRatingChanged: (value) {
        setState(() {
          ratting = value;
        });
      },
    );
  }
}
