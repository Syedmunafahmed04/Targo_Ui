import 'package:five_july/bigbuttons.dart';
import 'package:five_july/screencontainer.dart';
import 'package:five_july/Screen2.dart';
import 'package:five_july/signupwithgoogle.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'Screen2';
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isagree = false;
  Color agreebuttoncolor = Colors.black;
  Icon agreeicon = Icon(Icons.circle_outlined, color: Colors.black, size: 20);

  void agree() {
    setState(() {
      agreebuttoncolor = Colors.white;
      isagree = true;
      agreeicon = Icon(
        Icons.circle,
        color: Colors.white,
        size: 20,
      );
    });
  }

  void notagree() {
    setState(() {
      agreebuttoncolor = Colors.black;
      isagree = false;
      agreeicon = Icon(
        Icons.circle_outlined,
        color: agreebuttoncolor,
        size: 20,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screencontainer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Text(
                      '  Sign Up',
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
                    controller: name,
                    keyboardType: TextInputType.name,
                    style: fieldstyles,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hintText: 'Full Name',
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
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.indigo),
                  child: TextField(
                    controller: email,
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
                            borderSide: BorderSide(color: Colors.blue),
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
                    controller: password,
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
                        hintText: 'Password',
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
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(
                        onPressed: () {
                          isagree ? notagree() : agree();
                        },
                        icon: agreeicon),
                    Text(
                      'I agree to the terms & conditions',
                      style: normal,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: () {},
                    child: bigbutton(
                        text: Text(
                      'Sign Up',
                      style: signupbutton,
                    ))),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'OR',
                      style: normal,
                    ),
                    SizedBox(
                      width: 150,
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {},
                  child: signupwithgoogle(
                    text: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.jpeg',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sign Up With Google',
                            style: signupbutton,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have An Account?',
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
