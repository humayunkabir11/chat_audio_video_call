import 'package:dr_therapy/view/Screens/Appointment_Screen/appointmnet_screen.dart';
import 'package:dr_therapy/view/Screens/Audio_Call/audio_call.dart';
import 'package:dr_therapy/view/Screens/ChatScreens/chat_screen.dart';
import 'package:dr_therapy/view/Screens/Chat_list/chat_list.dart';
import 'package:dr_therapy/view/Screens/DoctorParrt/DoctorProfile/doctor_profile.dart';
import 'package:dr_therapy/view/Screens/DoctorParrt/WellComeTwo/wellcome_two.dart';
import 'package:dr_therapy/view/Screens/ReviewScreen/review.dart';
import 'package:dr_therapy/view/Screens/TherapistScreens/therapist_screen.dart';
import 'package:dr_therapy/view/Screens/TherapistScreens/therapist_two_page.dart';
import 'package:dr_therapy/view/Screens/VideioCallScreen/vedio_call_screen.dart';
import 'package:dr_therapy/view/screens/auth/login_screen/login_screen.dart';
import 'package:dr_therapy/view/screens/auth/signup_screen/signup_screen.dart';
import 'package:dr_therapy/view/screens/pricing/pricing_screen.dart';

import 'package:dr_therapy/view/screens/wellcome_screen/wellcome_screen.dart';

import 'package:dr_therapy/view/Screens/home_screen/HomeScreenmain/homescreenmain.dart';

import 'package:get/get.dart';

import '../../view/Screens/message/message_screen.dart';

class AppRoute {

    static const String homeScreen = "/home_screen";
    static const String signInScreen = "/login_screen";
    static const String wellcomeScreen = "/wellcome_screen";
    static const String signUpScreen = "/SignUpScreen_screen";
    static const String homescreenmain = "/home_screen_main";
    static const String therapist_screen = "/therapist_screen";
    static const String therapist_two_screen = "/therapist_two_screen";
    static const String appointment_page = "/appointmnet_page";
    static const String wellcome_two_screen = "/wellcome_two_screen";
    static const String doctor_profile_screen = "/doctor_profile_page";
    static const String chat_list_page = "/chat_list_page";
    static const String review_screen = "/review_screen";
    static const String audio_call = "/audio_call";
    static const String pricingScreen = "/pricing_screen";
    static const String vedio_calling_page = "/vedio_calling_page";
    static const String message_screen = "/message_screen";
    static const String chats_screen = "/chat_screen";


    static List<GetPage> routes = [
    GetPage(name: wellcomeScreen, page: () => const WellcomeScreen()),
    GetPage(name: signInScreen, page: () => const SignInScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: homescreenmain, page: () =>  HomeMain()),
    GetPage(name: therapist_screen, page: () =>  TherapistPage()),
    GetPage(name:therapist_two_screen, page: () =>  TherapistTwoPage()),
    GetPage(name: appointment_page, page: () =>  AppointmnetPage()),
    GetPage(name: wellcome_two_screen, page: () =>  WellComeTwoScreen()),
    GetPage(name: doctor_profile_screen, page: () =>  DoctorProfile()),
    GetPage(name: chat_list_page, page: () =>  ChatList()),
    GetPage(name: review_screen, page: () =>  ReviewPage()),
    GetPage(name: audio_call, page: () =>  AudioCallPage()),
    GetPage(name: pricingScreen, page: () =>  const PeicingScreen()),
    GetPage(name: vedio_calling_page, page: () =>  const VedioCallPage()),
    GetPage(name: message_screen, page: () =>   MessageScreen()),
    GetPage(name: chats_screen, page: () =>   ChatScreen()),

  ];
}