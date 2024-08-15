import 'package:five_july/bigbuttons.dart';
import 'package:five_july/forgotpass.dart';
import 'package:five_july/screencontainer.dart';
import 'package:five_july/Screen2.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class resetpass extends StatefulWidget {
  const resetpass({super.key});

  @override
  State<resetpass> createState() => _resetpassState();
}

class _resetpassState extends State<resetpass> {
  TextEditingController confirmresetpassword = TextEditingController();
  TextEditingController resetpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screencontainer(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(PageTransition(
                            child: forgotpass(),
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 500)));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text(
                    '  Reset Password',
                    textAlign: TextAlign.left,
                    style: signup,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.indigo),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: resetpassword,
                  keyboardType: TextInputType.emailAddress,
                  style: fieldstyles,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      hintText: 'New Password',
                      hintStyle: normal,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(100)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.indigo),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: confirmresetpassword,
                  keyboardType: TextInputType.emailAddress,
                  style: fieldstyles,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: normal,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(100)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print('Password Reset!');
                  Navigator.of(context).push(PageTransition(
                      child: signinpage(),
                      type: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 500)));
                },
                child: bigbutton(
                  text: Center(
                    child: Text(
                      'Reset Password',
                      style: signupbutton,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
