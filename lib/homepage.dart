import 'package:five_july/Screen2.dart';
import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

class homepage extends StatefulWidget {
  static const String id = 'homepage';
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int currentindex = 0;
  bool status = false;
  bool isplay = false;
  String statustext = 'Not Active';
  List<Icon> drawericons = [
    Icon(
      Icons.payment,
      color: Colors.white,
      size: 25,
    ),
    Icon(
      Icons.share,
      color: Colors.white,
      size: 25,
    ),
    Icon(
      Icons.star_border,
      color: Colors.white,
      size: 25,
    ),
    Icon(
      Icons.chat_outlined,
      color: Colors.white,
      size: 25,
    )
  ];

  List<Text> drawertext = [
    Text(
      'Payment Method',
      style: fieldstyles,
    ),
    Text(
      'Invite Friends',
      style: fieldstyles,
    ),
    Text(
      'Rate Us',
      style: fieldstyles,
    ),
    Text(
      'Chat With Us',
      style: fieldstyles,
    )
  ];

  List<Icon> homepagebuttonicons = [
    Icon(
      Icons.speed,
      color: Colors.red,
      size: 25,
    ),
    Icon(
      Icons.ondemand_video_rounded,
      color: Colors.orange,
      size: 25,
    ),
    Icon(
      Icons.telegram_rounded,
      color: Colors.blue,
      size: 30,
    ),
  ];

  List<Text> homepagebuttontext = [
    Text(
      'Boost +100%',
      style: fieldstyles,
    ),
    Text(
      'Watch Video +1',
      style: fieldstyles,
    ),
    Text(
      'Join Telegram +1',
      style: fieldstyles,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.indigo[700],
        drawer: Drawer(
          backgroundColor: Colors.indigo[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Targo Coin',
                      style: signupbutton,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.separated(
                      itemCount: drawericons.length,
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemBuilder: (BuildContext context, index) {
                        return ListTile(
                          tileColor: Colors.indigo[800],
                          leading: drawericons[index],
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 25,
                          ),
                          title: drawertext[index],
                        );
                      })),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: Duration(milliseconds: 500),
                          child: signinpage(),
                          type: PageTransitionType.topToBottom));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log Out',
                        style: textbutton,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Targo Coin',
            style: signupbutton,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/profilepic.jpg'),
              ),
            ),
          ],
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    const Color.fromARGB(255, 15, 31, 123)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [.01, 1.0])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo[900],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Speed: ',
                        style: normal,
                      ),
                      Text(
                        '300 TH/h',
                        style: fieldstyles,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //MINING ICON

                GestureDetector(
                  onTap: () {
                    setState(() {
                      status = !status;
                      isplay = !isplay;
                      if (status == false) {
                        statustext = 'Not Active';
                      } else {
                        statustext = 'Active';
                      }
                    });
                  },
                  child: AnimatedContainer(
                    curve: Curves.easeInOutCubicEmphasized,
                    duration: Duration(milliseconds: 500),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        color: isplay ? Colors.indigo : Colors.indigo[300],
                        shape: BoxShape.circle),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wifi_channel,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          'Tap To Start Mining',
                          style: miningbutton,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo[900],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Status: ',
                        style: normal,
                      ),
                      Text(
                        '$statustext',
                        style: fieldstyles,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.indigo[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      homepagebuttonicons[0],
                      SizedBox(
                        width: 60,
                      ),
                      homepagebuttontext[0],
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.indigo[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      homepagebuttonicons[1],
                      SizedBox(
                        width: 60,
                      ),
                      homepagebuttontext[1],
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.indigo[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      homepagebuttonicons[2],
                      SizedBox(
                        width: 60,
                      ),
                      homepagebuttontext[2],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
