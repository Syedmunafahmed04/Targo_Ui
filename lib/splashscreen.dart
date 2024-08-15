import 'dart:async';

import 'package:five_july/Screen2.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'Screen1';

  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => signinpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 53, 143),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/t.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'T A R G O',
              style: heading,
            ),
          ),
        ],
      ),
    );
  }
}
