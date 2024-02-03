import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utils/app_color/app_color.dart';
import '../text/custom_text.dart';


class CustomCard extends StatelessWidget {

   CustomCard({super.key, required this.name, required this.describtion, required this.ratting});

  final String name;
  final String describtion;
  final int ratting;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: Container(
        height: 180,
        width: double.maxFinite,
        padding: const EdgeInsets.all(10.0),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFEAEAEA)),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 24,
              offset: Offset(0, 8),
              spreadRadius: 0,
            )
          ],
        ),

        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 36.0,
                  width:  36.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(AppImage.doctorIamge),
                ),

                //Name + Rtating

                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //Name
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: CustomText(
                        maxLines: 2,
                        textAlign:TextAlign.start,
                        text:name,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                    ),
                      ),

                    //Ratting

                    RatingBar.builder(
                      itemSize: 15.0,
                      initialRating: 3,
                      minRating:1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),


                  ],
                ),

                const SizedBox(width:5.0),

                //Date
                const CustomText(
                  text: " Dec 24, 2023",
                  fontSize: 10.0,
                ),

              ],
            ),

            const SizedBox(height: 10.0,),

              const CustomText(
              color:AppColors.timeBlack,
              textAlign: TextAlign.start,
              text:  AppString.Imreally  // describtion,
            ),

          ],
        ),

      ),
    );
  }
}
