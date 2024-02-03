


import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:dr_therapy/utils/icons/icons.dart';
import 'package:dr_therapy/view/screens/message/message_bubble.dart';
import 'package:dr_therapy/view/screens/message/message_input_field.dart';
import 'package:dr_therapy/view/screens/message/message_model.dart';
import 'package:dr_therapy/view/widgets/buttons/custom_elevated_button.dart';
import 'package:dr_therapy/view/widgets/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final TextEditingController messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Message> messages = [
    Message('03.20', 'Hello!', false),
    Message('11.05', 'Hi there!', true),
    Message('08.25', 'How are you?', false),
  ];

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.extentAfter,
      duration: const Duration(milliseconds: 50),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          backgroundColor:Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              SvgPicture.asset("assets/icons/drwareicon.svg"),

              Image.asset("assets/images/applogo.png",height: 60,),

              CustomElevatedButton(onPressed: (){}, titleText: "Today",buttonHeight: 40,)
            ],
          ),
        ),
        body: Column(
          children: [
           const TitleText(text: 'Welcome to your confidential Mindgaze space!',
             fontWeight: FontWeight.w600,fontSize: 24,color: AppColors.primaryColor,left: 24,right: 24,textAlign: TextAlign.center,),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
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
          controller: messageController,
          onTap: () {
            if(messageController.text==""){
            }else{
              TimeOfDay currentTime = TimeOfDay.now();
              messages.add(Message(currentTime.format(context).toString(), messageController.text, true),);
              setState(() {
                _scrollToBottom();
                messageController.clear();
              });
            }
          },
        ),
      ),
    );
  }
}
