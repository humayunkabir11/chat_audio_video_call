import 'package:dr_therapy/utils/app_color/app_color.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart' as foundation;

class MessageInputField extends StatefulWidget {



   MessageInputField({super.key, required this.controller, required this.onTap,this.emojiShowingTwo=false});
   final TextEditingController controller;
   final VoidCallback onTap;
   final  bool emojiShowingTwo;
  @override
  State<MessageInputField> createState() => _MessageInputFieldState();
}
class _MessageInputFieldState extends State<MessageInputField> {
  final TextEditingController _controller = TextEditingController();

  bool emojiShowing = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  _onBackspacePressed() {
    _controller
      ..text = _controller.text.characters.toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
  }
  @override
  Widget build(BuildContext context) {
    return    AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets,
      duration: const Duration(milliseconds: 100),
      curve: Curves.decelerate,
      child: Container(
        height:emojiShowing?350:100.0,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical:5),
        decoration: BoxDecoration(
            color: AppColors.whiteLight,
            boxShadow: [
              BoxShadow(
                color: AppColors.blackNormal.withOpacity(0.1),
                offset: const Offset(2, 2),
                blurRadius: 10,
              )
            ]
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                  },
                  child: const Icon(Icons.camera_alt,
                      color: AppColors.iconDarkGray, size: 20),
                ),
                const SizedBox(width: 8,),
                GestureDetector(
                  onTap: () {
                  },
                  child: const Icon(Icons.mic_outlined,
                      color: AppColors.iconDarkGray, size: 20),
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: TextFormField(
                    onTap: (){emojiShowing=false;},
                    cursorColor: AppColors.blackNormal,
                    keyboardType: TextInputType.multiline,
                    textAlign: TextAlign.left,
                    textInputAction: TextInputAction.done,
                    controller: widget.controller,
                    style: GoogleFonts.openSans(
                        color: AppColors.blackNormal,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                    decoration: InputDecoration(
                      contentPadding:  const EdgeInsetsDirectional.only(start: 12, end: 12, top: 12, bottom: 12),

                      suffixIcon: IconButton(icon:const Icon(Icons.send,
                          color: AppColors.iconDarkGray, size: 20),
                        onPressed: widget.onTap, ),
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: "Type message",
                      hintStyle: GoogleFonts.raleway(
                          color: AppColors.iconDarkGray,
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: AppColors.iconDarkGray.withOpacity(0.5))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: AppColors.iconDarkGray.withOpacity(0.5))
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: AppColors.iconDarkGray.withOpacity(0.5))
                      ),
                    ),


                  ),
                ),

                Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        emojiShowing = !emojiShowing;
                        FocusManager.instance.primaryFocus?.unfocus();
                        Future.delayed(
                            const Duration(milliseconds: 150), () {
                          setState(() {

                          });
                        });
                      });
                    },
                    icon: const Icon(Icons.emoji_emotions_sharp,
                        color: AppColors.iconDarkGray, size: 20),
                  ),
                ),

                const SizedBox(width: 8,),

                GestureDetector(
                  onTap: () {

                  },
                  child: const Icon(Icons.thumb_up,
                      color: AppColors.iconDarkGray, size: 20),
                ),

              ],
            ),

            Offstage(
              offstage:!emojiShowing,
              child: SingleChildScrollView(
                child: SizedBox(
                 height:200.0,
                  child: EmojiPicker(
                    onEmojiSelected: ( category, emoji) {
                    },
                    onBackspacePressed: _onBackspacePressed,
                    textEditingController: widget.controller, // pass here the same [TextEditingController] that is connected to your input field, usually a [TextFormField]
                    config:  Config(
                      columns:7,
                      emojiSizeMax:24 * (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.30 : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.RECENT,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      backspaceColor: Colors.blue,
                      skinToneDialogBgColor: Colors.green,
                      skinToneIndicatorColor: Colors.grey,
                      enableSkinTones: true,
                      recentTabBehavior: RecentTabBehavior.RECENT,
                      recentsLimit: 28,
                      noRecents: const Text(
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ), // Needs to be const Widget
                      loadingIndicator: const SizedBox.shrink(), // Needs to be const Widget
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.NONE,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),

      ),
    );
  }
}


