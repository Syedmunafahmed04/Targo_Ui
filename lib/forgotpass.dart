import 'package:five_july/bigbuttons.dart';
import 'package:five_july/resetpass.dart';
import 'package:five_july/screencontainer.dart';
import 'package:five_july/Screen2.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class forgotpass extends StatefulWidget {
  static const String id = 'forgotpass';
  const forgotpass({super.key});

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  TextEditingController recoveremail = TextEditingController();
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
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: signinpage(),
                                  type: PageTransitionType.leftToRight));
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
                      '   Forgot Password',
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
                    controller: recoveremail,
                    keyboardType: TextInputType.emailAddress,
                    style: fieldstyles,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Colors.white,
                        ),
                        hintText: 'Email Address',
                        hintStyle: normal,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green.shade200),
                            borderRadius: BorderRadius.circular(100)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          child: resetpass(),
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500)));
                    },
                    child: bigbutton(
                        text: Text(
                      'Send Code',
                      style: signupbutton,
                    ))),
                SizedBox(
                  height: 380,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Go Back To",
                      style: fieldstyles,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: signinpage(),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: Text(
                          'Sign In',
                          style: textbutton,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
