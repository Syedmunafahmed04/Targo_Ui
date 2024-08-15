import 'package:five_july/bigbuttons.dart';
import 'package:five_july/forgotpass.dart';
import 'package:five_july/screencontainer.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: screencontainer(
          child: Column(
        children: [
          SizedBox(
            height: 10,
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
            height: 50,
          ),
          Row(
            children: [
              Text(
                '  Enter OTP',
                style: signup,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  inactiveColor: Colors.blue[200],
                  activeColor: Colors.blueAccent,
                  selectedColor: Colors.white),
              textStyle: signupbutton,
            ),
          ),
          Center(
            child: Text(
              'Resend Code In 20 Sec',
              style: walletcurrency,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              print('Code Sent!');
            },
            child: bigbutton(
                text: Text(
              'Send Code',
              style: signupbutton,
            )),
          )
        ],
      )),
    ));
  }
}
