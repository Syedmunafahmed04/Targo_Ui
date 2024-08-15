import 'package:flutter/material.dart';

class signupwithgoogle extends StatefulWidget {
  final Widget text;
  const signupwithgoogle({super.key, required this.text});

  @override
  State<signupwithgoogle> createState() => _signupwithgoogleState();
}

class _signupwithgoogleState extends State<signupwithgoogle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.indigoAccent.shade400),
      child: Center(
        child: widget.text,
      ),
    );
  }
}
