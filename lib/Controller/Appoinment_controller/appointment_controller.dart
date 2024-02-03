import 'package:get/get.dart';

class AppointmentController extends GetxController {
  List<String> timeSchedules = [
    "06.0 - 08.0 AM ",
    "08.0 - 09.0 AM ",
    "09.0 - 10.0 AM ",
    "10.0 - 11.0 AM ",
    "11.0 - 12.0 PM ",
    "01.0 - 02.0 PM ",
    "02.0 - 04.0 PM ",
    "04.0 - 05.0 PM ",
  ];

  String selecteddate = "";
  String selectedTime = "";

  geteDate({required String date}) {
    selecteddate = date;
    //  selectedTime=time;
    update();
  }

  geteTime({required String time}) {
    selectedTime = time;
    update();
  }
}
