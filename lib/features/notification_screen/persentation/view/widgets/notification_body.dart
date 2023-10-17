import 'package:flutter/material.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Notification',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff161C2B),
                      ),
                    ),
                    SizedBox(
                      width: 280,
                    ),
                    Expanded(
                      child: Icon(
                        Icons.settings,
                        weight: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 123),
                child: Image.asset(
                  'assets/notification_images/Push notifications-rafiki 1.png',
                  width: 370,
                  height: 370,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 472),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'No notification,\nyet!',
                    style: TextStyle(
                      color: Color(0xff161C2B),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 561),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Lorem ipsum dolor sit amet, consectetur'
                    '\nadipiscing elit, sed do eiusmod tempor'
                    '\nincididunt dolore magna aliqua',
                    style: TextStyle(
                      color: Color(0xff6F6F79),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  }
}
