import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/CustomCard/custom_card.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {

  List<String> degree=[AppString.mBBS,AppString.fCPS,AppString.mCPS,AppString.fCPS,AppString.mRCP,AppString.fCPS,AppString.mBBS,];

  List<String> doctor_name=["Hasibul Hasan Shanto","Rafsan Hossain Opi","Humayun Kabir "];

 // List<Widget> name=[CustomCard(name: "", describtion: describtion, ratting: ratting)];

   int _carusol_index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [

            Container(
                 height: 360.0,
                 width:double.maxFinite,
                 child: Stack(
                 children: [
                    Container(
                            height: 200.0,
                            width: double.maxFinite,
                             decoration: const BoxDecoration(
                             color: AppColors.primaryColor,
                             borderRadius: BorderRadius.only(bottomRight:Radius.circular(16.3),bottomLeft:Radius.circular(16.3),),

               ),
                       child:IconButton(onPressed:(){
                         Get.back();
                       }, icon:Icon(Icons.arrow_back_ios),
                       color: AppColors.whiteLight,
                       alignment: AlignmentDirectional.topStart,
                       padding: EdgeInsets.only(left: 20.0,top: 50.0,)),

             ),


                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         Container(
                           height: 124.0,
                           width: 124.0,
                           decoration: BoxDecoration(
                           color: AppColors.whiteLight,
                           shape: BoxShape.circle,
                           border: Border.all(width: 2.5,color:AppColors.whiteLight),
                           ),
                           child: Image.asset(AppImage.doctorIamge,),
                         ),

                             //Doctor Name
                             const Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children:[ CustomText(

                                 text:"Hasibul Hasan Shanto",
                                 color: AppColors.blackColor,
                                 fontWeight: FontWeight.w600,
                                 fontSize: 24.0,


                               ),
                               ]
                             ),

                             SizedBox(height: 10.0,),

                             //Desigantion

                             const Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 CustomText(
                                   text:"Designation",
                                   color: AppColors.timeBlack,
                                   fontSize:15.0 ,
                                   fontWeight: FontWeight.w400,
                                 )
                               ],
                             ),

                        const SizedBox(height: 16.0,),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              // Phone Icon

                                 GestureDetector(
                                   onTap: (){
                                    Get.snackbar("","Phone tap",colorText: AppColors.blackColor,backgroundColor: AppColors.whiteLight);
                                   },
                                   child: Container(
                                     alignment: Alignment.center,
                                     height: 40.0,
                                     width: 40.0,
                                     decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: AppColors.gray6,
                                           border: Border.all(width: 1.5,color: AppColors.cardBorderGray),

                                     ),
                                     child:SvgPicture.asset(AppIcons.phoneIcon,color: AppColors.primaryGreen,),
                                   ),
                                 ),

                                SizedBox(width:5.0,),

                                // Vedio Call  Icon

                                 GestureDetector(
                                   onTap: (){
                                     Get.snackbar("","Vedio tap",colorText: AppColors.blackColor,backgroundColor: AppColors.whiteLight);
                                   },
                                   child: Container(
                                alignment: Alignment.center,
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.gray6,
                                    border: Border.all(width: 1.5,color: AppColors.cardBorderGray),

                                ),
                                     child:SvgPicture.asset(AppIcons.vedio_call_icon,color: AppColors.primaryGreen,),
                              ),
                                 ),

                                 SizedBox(width:5.0,),

                              //Masseging Icon

                                 GestureDetector(
                                onTap: (){
                                  Get.snackbar("","Massege tap",colorText: AppColors.blackColor,backgroundColor: AppColors.whiteLight);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.gray6,
                                    border: Border.all(width: 1.5,color: AppColors.cardBorderGray),

                                  ),
                                  child:SvgPicture.asset(AppIcons.massageIcon,color: AppColors.primaryGreen,),
                                ),
                              ),

                            ],
                          ),



                    ],
                 ),
                  ),
             ]
           ),
         ),

           const SizedBox(height: 19.0,),

        Expanded(
          child: SingleChildScrollView(
                physics: PageScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    //About
                       const Padding(
                         padding: EdgeInsets.only(left: 20.0),
                         child: Row(
                               children: [
                               CustomText(
                               text:AppString.about,
                               color: AppColors.blackColor,
                               fontWeight: FontWeight.w700,
                               fontSize: 20.0,

                             ),
                           ],
                         ),
                       ),

                       SizedBox(height: 15.0,),

                       const Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: ReadMoreText(
                    AppString.Imreally,
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    style: TextStyle(color: AppColors.timeBlack),
                    lessStyle: TextStyle(color: AppColors.blackColor,fontWeight: FontWeight.bold,),
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: AppColors.blackColor),
      ),
                ),

                       SizedBox(height: 15.0,),



                    //Degree

                    Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0),

                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:degree.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing:5,
                            mainAxisSpacing: 5,
                            mainAxisExtent: 50),
                        itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            setState(() {
                              //selected_time=index;
                            });
                            //_selectedTime=index.toString()
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 31.0,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: AppColors.searchBackgroundGray,
                              border: Border.all(width: 1.0,color:AppColors.borderColor),
                              borderRadius: BorderRadius.all(Radius.circular(80.0),),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: CustomText(
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                color: AppColors.blackColor,
                                text:degree[index],
                              ),
                            ),
                          ),

                        ),
                      ),
                    ),

                    SizedBox(height: 30.0,),

                    //Review

                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            text:"Patient Reviews",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color:AppColors.blackColor,
                          ),
                        ],
                      ),
                    ),


                    const SizedBox(height: 16,),


                    //Review Card

                    CarouselSlider(
                      options: CarouselOptions(height:200.0,
                        onPageChanged: (index, reason) {
                          //_carusol_index = index;
                          setState((){
                            _carusol_index = index;
                          });
                        },
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                      autoPlayInterval: Duration(seconds: 2),

                      ),
                      items:doctor_name.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return CustomCard(name: i, describtion: i, ratting:1 );

                          },
                        );
                      }).toList(),
                    ),


                   const SizedBox(height: 10.0,),

                             //Indicator

                             DotsIndicator (
                                dotsCount:doctor_name.length,
                                position:_carusol_index,
                                decorator: const DotsDecorator(
                                color:AppColors.gray6, // Inactive color
                                activeColor:AppColors.primaryColor,
            ),
          ),

                          const SizedBox(height: 30.0,),

                          //Bottom button

                         Padding(
                           padding: const EdgeInsets.all(40.0),
                           child: InkWell(
                             onTap: (){
                               Get.snackbar("","Request done ",backgroundColor: Colors.white,colorText: AppColors.blackColor);
                             },
                             child: Container(
                                 alignment: Alignment.center,
                                 height: 52.0,
                                 width:double.maxFinite,
                                 decoration: const BoxDecoration(
                                 color: AppColors.primaryColor,
                                 borderRadius: BorderRadius.all(Radius.circular(40.0)),
                               ),
                               child: const CustomText(
                                  text:AppString.requestAsTherapist,
                                  color: AppColors.whiteLight,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                               ),

                             ),
                           ),
                         ),

                  ],
                ),
              ),
        ),



       ],
     ),
      );
  }
}

