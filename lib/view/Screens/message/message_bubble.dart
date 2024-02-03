
import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';


class MessageBubble extends StatelessWidget {
  final String time;
  final String text;
  final bool isMe;


  const MessageBubble({super.key, required this.time, required this.text, required this.isMe,});

  @override
  Widget build(BuildContext context) {
    final bubbleAlignment = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;

    // final primaryColor = isMe ? const Color(0xff000000) : Colors.black12;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: bubbleAlignment,
        children: [
           ChatBubble(
             alignment: isMe?Alignment.topRight : Alignment.topLeft,
             backGroundColor:  AppColors.primaryColor,
              clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
            child: Text(
              text,
              style: TextStyle(color: isMe ? Colors.white : Colors.white),
               ),
            ),

          const SizedBox(height: 4),
          Text(
            time,
            style: const TextStyle(
              color: AppColors.timeBlack,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}