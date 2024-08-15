import 'package:five_july/screencontainer.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';

class invite extends StatefulWidget {
  const invite({super.key});

  @override
  State<invite> createState() => _inviteState();
}

class _inviteState extends State<invite> {
  String refercode = 'QGCFPNC8512'.toUpperCase();
  TextEditingController refercodeinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: screencontainer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.share_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    '   Refer & Get Targo Coin',
                    style: signupbutton,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/invitebg.png',
              height: 100,
              width: 100,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '   Invite And Get Coin',
                      style: signupbutton,
                    ),
                    SizedBox(height: 10),
                    Text(
                      '   Copy your code, share it with your friends',
                      style: walletcurrency,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 50,
              width: 240,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '$refercode',
                    style: walletcurrency,
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  IconButton(
                    onPressed: () {
                      print('Code Copied!');
                    },
                    icon: Icon(
                      Icons.copy_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'OR',
              style: normal,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.facebook_outlined,
                  color: Colors.blue[500],
                  size: 40,
                ),
                Icon(
                  Icons.telegram_outlined,
                  color: Colors.blue,
                  size: 40,
                ),
                Icon(
                  Icons.message_outlined,
                  color: Colors.blue[500],
                  size: 35,
                ),
                Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                  size: 32,
                ),
              ],
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[700]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '  10 Referrals',
                        style: targocoin,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        '150 TC',
                        style: targocoinrate,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '  20 Referrals',
                        style: targocoin,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "500 TC",
                        style: targocoinrate,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '  30 Referrals',
                        style: targocoin,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "750 TC",
                        style: targocoinrate,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  '   Invitation Code',
                  style: signupbutton,
                ),
              ],
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                controller: refercodeinput,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {
                            print('Code Reffered!');
                          },
                          icon: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Colors.blue,
                            size: 35,
                          ),
                        )),
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w100),
                    hintText: 'Enter Refer Code',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue.shade700))),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
