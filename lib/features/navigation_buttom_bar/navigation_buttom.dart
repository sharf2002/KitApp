import 'package:flutter/material.dart';
import 'package:kit/features/home/persentation/view/widgets/home_body.dart';
import 'package:kit/features/notification_screen/persentation/view/widgets/notification_body.dart';

import '../chat_screen/chat_screen.dart';
import '../info_screen/info_screen.dart';

class NavigationButtom extends StatefulWidget {
  const NavigationButtom({Key? key}) : super(key: key);

  @override
  State<NavigationButtom> createState() => _NavigationButtomState();
}

class _NavigationButtomState extends State<NavigationButtom> {
  int selectedIndex = 0;
  List nav = [HomeBody(), Chats(), NotificationBody(), Info()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff4D8AF0),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
      body: nav.elementAt(selectedIndex),
    );
  }
}
