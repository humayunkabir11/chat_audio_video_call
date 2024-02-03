import 'package:dr_therapy/Controller/Appoinment_controller/appointment_controller.dart';
import 'package:dr_therapy/Controller/pricing_controller.dart';
import 'package:get/get.dart';

class Depandency extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentController());

    Get.lazyPut(() => PricingController());
  }


}