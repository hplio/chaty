import 'package:chaty/massage_display.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'chat_page.dart';

bool isUser = false;

class MassageView extends StatefulWidget {
  const MassageView({
    super.key,
    required this.documents,
  });

  final List<DocumentSnapshot<Object?>> documents;

  @override
  State<MassageView> createState() => _MassageViewState();
}

class _MassageViewState extends State<MassageView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        itemCount: widget.documents.length,
        itemBuilder: (context, index) {
          List<Widget> massageRetrive = [];
          Map<String, dynamic> data =
              widget.documents[index].data() as Map<String, dynamic>;
          var m = data['text'];
          var s = data['user'].toString();
          isUser = loginEmail == s;
          var massageSander = MassageText(m: m, s: s);
          massageRetrive.add(massageSander);
          return Column(
            crossAxisAlignment:
                isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: massageRetrive,
          );
        });
  }
}
