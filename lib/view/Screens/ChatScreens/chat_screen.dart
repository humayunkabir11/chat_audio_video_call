import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/utils/images/imgae.dart';
import 'package:dr_therapy/view/Screens/Audio_Call/audio_call.dart';
import 'package:dr_therapy/view/Screens/message/message_bubble.dart';
import 'package:dr_therapy/view/Screens/message/message_input_field.dart';
import 'package:dr_therapy/view/Screens/message/message_model.dart';
import 'package:dr_therapy/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../VideioCallScreen/vedio_call_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Message> messages = [
    Message('03.20', 'Hello!', false),
    Message('11.05', 'Hi there!', true),
    Message('08.25', 'How are you?', false),
  ];

  // void _scrollToBottom() {
  //   _scrollController.animateTo(
  //     _scrollController.position.minScrollExtent,
  //     duration: const Duration(milliseconds: 500),
  //     curve: Curves.easeInOut,
  //   );
  // }

  void scrollToBottom(){
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  bool imoji=true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 16.0,),

            //App Bar

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Row(
                  children: [
                    //Arrow button
                    IconButton(onPressed:(){Get.back();},icon:const Icon(Icons.arrow_back_ios,color: AppColors.blackColor,),),
                    const SizedBox(width:8.0,),

                    Container(
                      height: 34.0,
                      width: 34.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),

                      child: Image.asset(AppImage.doctorIamge),
                    ),

                    const SizedBox(width:8.0,),

                    const CustomText(
                      text: "Hasibul Hasan Shanto",
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ],),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap:(){
                          Get.to(AudioCallPage());
                        },child: SvgPicture.asset(AppIcons.phoneIcon,color: AppColors.primaryGreen,)),

                    const SizedBox(width: 10.0,),

                    GestureDetector(
                        onTap:(){
                          Get.to(VedioCallPage());
                        },
                        child: SvgPicture.asset(AppIcons.vedio_call_icon,color: AppColors.primaryGreen,)),
               ],),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:5.0),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    controller: _scrollController,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final message = messages[index];
                      return MessageBubble(
                        time: message.sender,
                        text: message.text,
                        isMe: message.isMe,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),

        bottomNavigationBar:MessageInputField(
          emojiShowingTwo: imoji,
          controller: messageController,
          onTap: () {
            scrollToBottom();

            if(messageController.text==""){
            }else{
              TimeOfDay currentTime = TimeOfDay.now();
              messages.add(Message(currentTime.format(context).toString(), messageController.text, true),);
              setState(() {


                imoji=false;

                //_scrollToBottom();
                messageController.clear();
                // void scrollToBottom(){
                //   _scrollController.animateTo(
                //     _scrollController.position.minScrollExtent,
                //     duration: const Duration(milliseconds: 300),
                //     curve: Curves.easeInOut,
                //   );
                // }
              });
            }
          },
        ),

      ),
    );
  }
}
