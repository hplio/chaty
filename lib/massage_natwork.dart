import 'package:chaty/massage_retrive.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class MassageStream extends StatefulWidget {
  const MassageStream({
    super.key,
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  @override
  State<MassageStream> createState() => _MassageStreamState();
}

class _MassageStreamState extends State<MassageStream> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget._firestore.collection('massage').orderBy('timestamp',descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Expanded(
              child: Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.black,
              )),
            );
          } else if (snapshot.hasError) {
            return Text(
              'Error: ${snapshot.error}',
            );
          }
          final querySnapshot = snapshot.data!;
          List<DocumentSnapshot> documents = querySnapshot.docs;
          return Expanded(
            child: MassageView(documents: documents),
          );
        });
  }
}