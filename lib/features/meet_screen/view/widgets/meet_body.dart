import 'package:flutter/material.dart';
import 'package:kit/features/home/persentation/view/home_view.dart';

class MeetScreenBody extends StatelessWidget {
  MeetScreenBody({Key? key}) : super(key: key);
  List staff = [
    {
      'image': 'assets/meet_screen/41px.png',
      'title': 'Henry Itondo',
      'subTitle': 'Math Teacher',
      'trailing': 'assets/meet_screen/phone.png'
    },
    {
      'image': 'assets/meet_screen/Ellipse 16.png',
      'title': 'Courtney Henry',
      'subTitle': 'Supervisor',
      'trailing': 'assets/meet_screen/phone.png'
    },
    {
      'image': 'assets/meet_screen/Ellipse 15.png',
      'title': 'Darika Samak',
      'subTitle': 'Admin',
      'trailing': 'assets/meet_screen/phone.png'
    },
    {
      'image': 'assets/meet_screen/42px.png',
      'title': 'Em Assinder',
      'subTitle': 'Class Teacher',
      'trailing': 'assets/meet_screen/phone.png'
    },
    {
      'image': 'assets/meet_screen/40px.png',
      'title': 'Darika Samak',
      'subTitle': 'Admin',
      'trailing': 'assets/meet_screen/phone.png'
    },
    {
      'image': 'assets/meet_screen/Ellipse 20.png',
      'title': 'Em Assinder',
      'subTitle': 'Class Teacher',
      'trailing': 'assets/meet_screen/phone.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 67),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeView();
                              },
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back,
                          weight: 24,
                        ),
                      ),
                      SizedBox(
                        width: 360,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.search_rounded,
                          weight: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: 0),
              leading: Image.asset('assets/meet_screen/Ellipse.png'),
              title: Text('Lucas Wilson'),
              subtitle: Text('Thomas Jefferson High School'),
              trailing: Image.asset(
                'assets/meet_screen/Group 2.png',
                width: 36,
                height: 36,
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Staff available for Lucas Wilson',
                style: TextStyle(
                  color: Color(0xff4E74F9),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            for (int i = 0; i < staff.length; i++)
              Column(
                children: [
                  ListTile(
                    visualDensity: VisualDensity(vertical: 0),
                    leading: Image.asset(
                      staff[i]['image'],
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      staff[i]['title'],
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      staff[i]['subTitle'],
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Image.asset(
                      staff[i]['trailing'],
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
