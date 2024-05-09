import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.data, required this.colour, required this.onpress});
  final String data;
  final Color colour;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed:onpress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            data,
            style:const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}