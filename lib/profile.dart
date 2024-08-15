import 'package:five_july/screencontainer.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  TextEditingController stakeamount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var currenttime = DateTime.now();
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sizedbox(),
                    sizedbox(),
                    Icon(
                      Icons.person_4_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                    Text(
                      '   My Profile',
                      style: signupbutton,
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    IconButton(
                        onPressed: () {
                          print('Edited');
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 25,
                        ))
                  ],
                ),
              ),
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                ),
              ),
              sizedbox(),
              sizedbox(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '  James Anderson',
                        style: signupbutton,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 110,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red[400],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.verified,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              'Targo Verified',
                              style: verify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   jamesanderson42@gmail.com',
                        style: walletcurrency,
                      ),
                    ],
                  ),
                ],
              ),
              sizedbox(),
              SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.white,
                  thickness: 0.1,
                ),
              ),
              sizedbox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '  My Transactions',
                    style: signupbutton,
                  ),
                ],
              ),
              sizedbox(),
              Container(
                  height: 80,
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
                            '  Locked Balance',
                            style: walletcurrency,
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            '100 TC',
                            style: targocoinrate,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '  Targo Coin Earned',
                            style: walletcurrency,
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "400 TC",
                            style: targocoinrate,
                          ),
                        ],
                      ),
                    ],
                  )),
              sizedbox(),
              sizedbox(),
              sizedbox(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '   My Staking',
                        style: signupbutton,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '   Get 20% Extra After 90 Days',
                        style: walletcurrency,
                      ),
                    ],
                  ),
                ],
              ),
              sizedbox(),
              Container(
                height: 50,
                width: 250,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Locked for 90 days',
                      style: fieldstyles,
                    )
                  ],
                ),
              ),
              sizedbox(),
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
                  controller: stakeamount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundImage: AssetImage('assets/images/t.png'),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w100),
                      hintText: 'Enter Amount',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.blue.shade700))),
                ),
              ),
              sizedbox(),
              GestureDetector(
                onTap: () {
                  print('Staked!');
                },
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  child: Center(
                    child: Text(
                      'Stake',
                      style: targocoinrate,
                    ),
                  ),
                ),
              ),
              sizedbox(),
              sizedbox(),
              Row(
                children: [
                  Text(
                    '   My Mining',
                    style: signupbutton,
                  ),
                ],
              ),
              sizedbox(),
              Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo[700]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '47 ',
                            style: signupbutton,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('assets/images/t.png'),
                          ),
                        ],
                      ),
                      Text(
                        'Last Sync: ${currenttime.hour}:${currenttime.minute}',
                        style: walletcurrency,
                      ),
                    ],
                  )),
              sizedbox(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget sizedbox() {
    return SizedBox(
      height: 10,
    );
  }
}
