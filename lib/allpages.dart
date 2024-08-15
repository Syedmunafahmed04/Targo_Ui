import 'package:five_july/homepage.dart';
import 'package:five_july/invite.dart';
import 'package:five_july/profile.dart';
import 'package:five_july/wallet.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class allpages extends StatefulWidget {
  const allpages({super.key});

  @override
  State<allpages> createState() => _allpagesState();
}

class _allpagesState extends State<allpages> {
  int currentindex = 0;
  List pages = [
    homepage(),
    wallet(),
    invite(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: Container(
        color: Colors.indigo.shade900,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            backgroundColor: Colors.indigo.shade900,
            tabBackgroundColor: Colors.blue,
            padding: EdgeInsets.all(12),
            color: Colors.white,
            gap: 5,
            activeColor: Colors.white,
            tabs: [
              GButton(
                icon: Icons.home_filled,
                text: 'Home',
              ),
              GButton(
                icon: Icons.wallet,
                text: 'Wallet',
              ),
              GButton(
                icon: Icons.share_outlined,
                text: 'Invite',
              ),
              GButton(
                icon: Icons.person_4_outlined,
                text: 'Profile',
              ),
            ],
            selectedIndex: currentindex,
            onTabChange: (value) {
              setState(() {
                currentindex = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
