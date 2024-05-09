import 'package:chaty/constants.dart';
import 'package:flutter/material.dart';
import 'massage_retrive.dart';

class MassageText extends StatefulWidget {
  const MassageText({
    super.key,
    required this.m,
    required this.s,
  });

  final String m;
  final String s;

  @override
  State<MassageText> createState() => _MassageTextState();
}

class _MassageTextState extends State<MassageText> {

 

  @override
  Widget build(BuildContext context) {
    
    // print(isUser);
    return Padding(
      padding: isUser
          ? const EdgeInsets.only(top: 10, bottom: 10, right: 10)
          : const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            widget.s,
            style: kSenderTextStyle,
          ),
          Material(
            elevation: 5.0,
            color: isUser ? Colors.blue : Colors.white,
            borderRadius: isUser
                ? const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))
                : const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                widget.m,
                style: isUser
                    ? kMassageTextStyle
                    : kMassageTextStyle.copyWith(
                        color: Colors.black54,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
