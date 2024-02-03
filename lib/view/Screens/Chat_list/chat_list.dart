import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_routes/app_route.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/view/widgets/Custom_ListTile/custom_list_tile.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../utils/icons/icons.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Column(
              children: [
                const SizedBox(height:30.0,),

                //App Bar
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // Back Button
                      IconButton(onPressed:(){Get.back();}, icon:const Icon(Icons.arrow_back_ios),),


                        // Chat

                      const CustomText(
                        text:AppString.chats,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),

                      //Center Logo

                      // Image.asset(AppImage.appLogo,
                      //   height: 47.0,
                      //   width: 145.0,
                      // ),

                      //Settings Icon
                         // Setting icon

                      Container(
                        height: 26.0,
                        width: 26.0,
                        child: SvgPicture.asset(AppIcons.settingsIcon,color: AppColors.timeBlack,),
                      ),



                    ],
                  ),
                ),

                const SizedBox(height:15.0,),

                Container(height: 1.0,width:double.maxFinite, color: AppColors.gray6,),

                //Search feild
              const SizedBox(height: 22.0,),


                Padding(
                  padding:const EdgeInsets.only(left: 20.0,right: 20.0),

                  child: Container(
                  height: 50.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.searchBackgroundGray,
                    borderRadius: const BorderRadius.all(Radius.circular(80.0,)),
                    border: Border.all(width: 1.0,color: AppColors.borderColor),
                  ),

                  child:const TextField(
                    style: TextStyle(fontSize: 16.0,color: AppColors.blackColor,),
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.blackColor,

                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search,color: AppColors.timeBlack,),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(15.0,),
                      hintText: AppString.search,
                      filled: false,

                    ),
                  )
                  ),
                ),

                const SizedBox(height: 16.0,),

                Expanded(
                  child: ListView.builder(

                      physics:const BouncingScrollPhysics(),
                      itemBuilder: (context, index){
                        return  Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:GestureDetector(
                              onTap: (){
                                Get.toNamed(AppRoute.chats_screen);
                              },
                              child: const CustomListTile()),
                        );
                      }
                  ),
                )

              ],
            ),
    );
  }
}
