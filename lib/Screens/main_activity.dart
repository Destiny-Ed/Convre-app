import 'package:badges/badges.dart';
import 'package:convre/Constant/colors.dart';
import 'package:convre/Screens/BottomNavPages/communities.dart';
import 'package:convre/Screens/BottomNavPages/home.dart';
import 'package:convre/Screens/BottomNavPages/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BottomNavPages/chat.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: _bottonNavigationPages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems(),
        currentIndex: _currentPage,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: black,
        selectedItemColor: primaryColor,
        onTap: (value){
          setState(() {
            _currentPage = value;
          });
        },
      ),
    );
  }

  ///Pages to switch to
  final List<Widget> _bottonNavigationPages = <Widget>[
    HomePage(),
    CommunityPage(),
    NotificationPage(),
    ChatPage(),
  ];

  ///BottomNavigation Items
  List<BottomNavigationBarItem> _bottomItems() {
    final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 20), label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.users,
            size: 20,
            color: grey,
          ),
          label: "Communities"),
      BottomNavigationBarItem(
          icon: Badge(
            badgeContent: Text("0", style: TextStyle(color : orange),),
              elevation: 0,
              badgeColor: white,
              child: Icon(Icons.notifications_outlined, color: grey,size : 20)), label: "Notification"),
      BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline, color : grey, size : 20), label: "Chat"),
    ];

    return items;
  }

  ///AppBar Widget
  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: white,
      automaticallyImplyLeading: false,
      title: Container(
        child: Row(
          children: <Widget>[
            //Drawer Icon
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SvgPicture.asset(
                  "assets/icon.svg",
                  width: 40,
                  color: orange,
                ),
              ),
            ),
            //Search Field
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  onTap: () {},
                  decoration: InputDecoration(
                      isDense: true,
                      // prefixIcon: Icon(
                      //   Icons.search,
                      //   color: grey,
                      // ),
                      border: InputBorder.none,
                      // contentPadding: const EdgeInsets.only(left: 8.8),
                      hintText: "Search"),
                ),
              ),
            ),
            //Cart Icon
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: orange,
                    child: Text(
                      "D",
                      style: TextStyle(color: black),
                    )),
              ),
            ),
          ],
        ),
      ),
      elevation: 0,
    );
  }
}
