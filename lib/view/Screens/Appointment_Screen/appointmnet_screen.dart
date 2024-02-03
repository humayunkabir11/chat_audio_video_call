import 'dart:io';

import 'package:dr_therapy/Controller/Appoinment_controller/appointment_controller.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/widgets/custom_will_pop/custom_alert_dialog.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/app_color/app_color.dart';
import '../../../utils/icons/icons.dart';

class AppointmnetPage extends StatefulWidget {
  const AppointmnetPage({super.key});

  @override
  State<AppointmnetPage> createState() => _AppointmnetPageState();
}
     CalendarFormat _calendarFormat=CalendarFormat.month;
      //AppointmentController controller=AppointmentController();

   List<String> tapName =[AppString.yourProfile,AppString.appointments,AppString.expert];

   int selectedindex=1;
   int selected_time=-1;

class _AppointmnetPageState extends State<AppointmnetPage> {

  DateTime? _selectedDate;
  String? _selectedTime;
   String? value;

  DateTime today=DateTime.now();
  DateTime _focuseDay=DateTime.now();

  void onDateselected(DateTime day, DateTime focusedDay){
  setState(() {
    today=day;
  });

  }

  final  contr = Get.put(AppointmentController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
           child: Scaffold(
             body: GetBuilder<AppointmentController>(
               builder: (controller) {
                 return Column(
                   children: [
                     const SizedBox(height: 13.0,),

                     //AppBar

                     Padding(
                       padding:  const EdgeInsets.only(left: 20.0,right: 20.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [

                           // Back Button

                             IconButton(onPressed:(){Get.back();}, icon:const Icon(Icons.arrow_back_ios),),

                           //Center Logo

                           Image.asset(AppImage.appLogo,
                             height: 47.0,
                             width: 145.0,
                           ),

                           //Settings Icon

                           Container(
                             height: 26.0,
                             width: 26.0,
                             child: SvgPicture.asset(AppIcons.settingsIcon,color: AppColors.timeBlack,),
                           ),


                         ],
                       ),
                     ),

                     const SizedBox(height: 13.0,),

                     const Divider(height: 1.0,color:AppColors.borderColor,thickness:1.0),

                     const SizedBox(height: 30.0,),

                     //Top Buttons

                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:
                           List.generate(tapName.length, (index) =>
                               Padding(
                                 padding: const EdgeInsets.only(right: 8.0),

                                 child: InkWell(
                                   onTap: (){
                                     setState(() {
                                       selectedindex=index;
                                       // if(selectedindex==0){
                                       // }
                                     });
                                   },
                                   child: Container(
                                    height: 40.0,
                                    width: 115,
                                    decoration: BoxDecoration(
                                      color:  selectedindex==index? AppColors.primaryColor:Colors.transparent,
                                     borderRadius: BorderRadius.circular(24),
                                     border: Border.all(color: AppColors.borderColor,width: 1.0,),
                                    ),
                                     child: Center(
                                     child:CustomText(
                                      text:tapName[index],
                                      color: selectedindex==index?AppColors.whiteLight:AppColors.timeBlack,
                                       fontWeight: FontWeight.w600,
                                       fontSize: 12.0,

                                     ),
                                   ),
                                  ),
                                 ),
                               ),
                              ),
                             ),
                            ),


                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [

                              //Calender

                              Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: Container(
                                  height: 400.0,
                                  width: double.maxFinite,
                                  decoration:BoxDecoration(
                                      color: AppColors.backgroundWhite,
                                      borderRadius: const BorderRadius.all(Radius.circular(10.0),),
                                      border: Border.all(color: AppColors.borderColor,width: 1.0),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x1E000000),
                                          blurRadius: 10.75,
                                          offset: Offset(0, 1.79),
                                          spreadRadius: 0,
                                        )
                                      ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),

                                    child: TableCalendar(
                                           firstDay: DateTime.utc(2010,),
                                           focusedDay: DateTime.now(),
                                           lastDay: DateTime.utc(3030,),
                                           startingDayOfWeek: StartingDayOfWeek.sunday,
                                           selectedDayPredicate:(day){ return isSameDay(_selectedDate,day);},
                                           onDaySelected:(selectDay, focusDay){
                                           if(!isSameDay(_selectedDate ,selectDay)){
                                           setState(() {
                                            _selectedDate=selectDay;
                                            //String value= DateFormat('MMMM,d').format(_selectedDate!);
                                            value=DateFormat('MMMM,d').format(_selectedDate!);
                                            _focuseDay=focusDay;
                                          });
                                        }
                                      },
                                           onPageChanged: (focusedDay) {
                                           _focuseDay = _selectedDate!;
                                           },
                                      //day,today),
                                           rowHeight: 38.0,
                                           calendarFormat: _calendarFormat,
                                           headerStyle: HeaderStyle(decoration: BoxDecoration(
                                           color: AppColors.gray6,border: Border.all(width: 15.0,color:AppColors.backgroundWhite),
                                           borderRadius: const BorderRadius.all(Radius.circular(20.0)),),
                                           formatButtonVisible:false,
                                           titleCentered: true,
                                           ),
                                           daysOfWeekStyle: const DaysOfWeekStyle(
                                           weekendStyle: TextStyle(fontSize: 14.0, color: AppColors.blueCoor),
                                           weekdayStyle:TextStyle(
                                           color: AppColors.blueCoor,
                                           fontSize: 14.0,
                                           fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                           availableGestures: AvailableGestures.all,
                                           pageJumpingEnabled:false,
                                           calendarStyle: CalendarStyle(
                                           todayDecoration:const BoxDecoration(color:AppColors.primaryColor,shape: BoxShape.circle),
                                           weekNumberTextStyle: const TextStyle(
                                           color: AppColors.blueCoor,
                                        ),
                                           selectedDecoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color:const Color(0x9483FD96),width: 3.0),
                                          color: AppColors.primaryColor,

                                          // borderRadius: BorderRadius.circular(0)
                                        ),

                                      ),
                                    ),
                                  ),

                                ),
                              ),

                              // Select Time

                              const Padding(
                                padding: EdgeInsets.only(left:20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: AppString.selectTime,
                                      color:AppColors.blackColor,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,

                                    ),
                                  ],
                                ),
                              ),

                              // Selected Time

                              Padding(
                                padding: const EdgeInsets.all(20.0),

                                child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount:8,
                                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing:5,
                                      mainAxisSpacing: 5,
                                      mainAxisExtent: 50),
                                  itemBuilder: (context, index) => InkWell(
                                    onTap: (){
                                      setState(() {
                                        selected_time=index;
                                      });

                                      _selectedTime=controller.timeSchedules[index];

                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.5,
                                      //padding: const EdgeInsets.only(top: 8,bottom:8,),
                                      decoration: BoxDecoration(
                                        color:Colors.transparent,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        height: 30.5,
                                        width: 30.5,
                                        decoration: BoxDecoration(
                                            color:selected_time==index?AppColors.primaryGreen:AppColors.gray6,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child:   Center(
                                          child: CustomText(
                                            text: controller.timeSchedules[index],
                                            color:selected_time==index?AppColors.whiteLight: AppColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 15.0,),

                              //Book Now  Button

                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: InkWell(
                                  onTap: (){

                                    if(_selectedDate==null ){

                                      controller.geteDate(date:value.toString());
                                    }
                                    else{
                                       controller.geteDate(date:value.toString());
                                    }
                                    if(_selectedTime==null){
                                      controller.geteTime(time: "null");
                                    }else{
                                      controller.geteTime(time: _selectedTime.toString());
                                    }

                                    controller.selectedTime=_selectedTime.toString();

                                    showCustomMadeStemp(context: context);
                                  },
                                  child: Container(
                                    height: 53.0,
                                    width: double.maxFinite,
                                    decoration: const BoxDecoration(
                                      color: AppColors.seconderyDeepGreen,
                                      borderRadius: BorderRadius.all(Radius.circular(24.0),),

                                    ),

                                    child: const Center(
                                      child: CustomText(
                                        text: AppString.bookNow,
                                        color: AppColors.whiteLight,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                   ],
                 );
               }
             ),


      ),
    );
  }

           void showCustomMadeStemp({required context}) {
    showDialog(
    context: context,
    builder: (context) {
      return Dialog(

           shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10.0),
        ),

           child: const CustomAlertDialog(),

      );
    },
  );
}
}
