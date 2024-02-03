import 'dart:ui';

import 'package:dr_therapy/Controller/Appoinment_controller/appointment_controller.dart';
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/app_strings/app_strings.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({super.key});

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  AppointmentController controller = AppointmentController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
        ),
        child: Container(
          height: 320.0,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: AppColors.whiteLight,
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: AppString.confirmSession,
                      color: AppColors.blackColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black26,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),

              // const SizedBox(height: 27.0,),

              //Date

              const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppString.date,
                      color: AppColors.blackColor,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10.0,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Container(
                  height: 48.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.0, color: AppColors.borderColor),
                    color: AppColors.cardBackgroundGray,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        6.0,
                      ),
                    ),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: CustomText(
                            textAlign: TextAlign.start,
                            text: controller.selecteddate,
                            color: AppColors.iconDarkGray,
                          ),
                        ),
                      ]),
                ),
              ),

              // const SizedBox(height: 10.0,),

              //Time

              const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppString.time,
                      color: AppColors.blackColor,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10.0,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Container(
                  height: 48.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.0, color: AppColors.borderColor),
                    color: AppColors.cardBackgroundGray,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        6.0,
                      ),
                    ),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: CustomText(
                            text: controller.selectedTime,
                            color: AppColors.iconDarkGray,
                          ),
                        ),
                      ]),
                ),
              ),

              //const SizedBox(height: 15.0,),

              // Confirm Button

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    Get.back();
                    Get.snackbar("", "Booking successfully confirmed ");
                  },
                  child: Container(
                    height: 53.0,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24.0),
                      ),
                    ),
                    child: const Center(
                      child: CustomText(
                        text: AppString.confirm,
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
      );
    });
  }
}
