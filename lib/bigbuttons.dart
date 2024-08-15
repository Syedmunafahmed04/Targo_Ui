import 'package:flutter/material.dart';

class bigbutton extends StatefulWidget {
  final Widget text;
  const bigbutton({super.key, required this.text});

  @override
  State<bigbutton> createState() => _bigbuttonState();
}

class _bigbuttonState extends State<bigbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blue),
      child: Center(
        child: widget.text,
      ),
    );
  }
}
