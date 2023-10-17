import 'package:flutter/material.dart';
import 'package:kit/core/utils/widgets/custom_buttons.dart';
import 'package:kit/features/fees_screen/peresentation/view/fees_screen_view.dart';

class StartScreenBody extends StatelessWidget {
  const StartScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 67, left: 320),
                child: Container(
                  width: 72,
                  height: 184,
                  child: Image.asset(
                    'assets/start_screen_images/Ellipse 192.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 139),
                child: Container(
                  width: 38,
                  height: 96,
                  child: Image.asset(
                    'assets/start_screen_images/Ellipse 196.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 222, left: 65),
                child: Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/start_screen_images/Ellipse 195 (1).png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 452, left: 319),
                child: Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/start_screen_images/Ellipse 194.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 296, left: 56),
                child: Container(
                  width: 188,
                  height: 188,
                  child: Image.asset(
                    'assets/start_screen_images/Ellipse 195.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 111,
                ),
                child: Container(
                  width: 598,
                  height: 398,
                  child: Image.asset(
                    'assets/start_screen_images/woman-with-laptop-computer-sitting-floor-isolated-white-removebg-preview (1) 1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.center,
            'Welcome To \n Learner',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Lorem ipsum dolor sit amet, consectetur\n'
                ' adipiscing elit, sed do eiusmod tempor\n'
                ' incididunt dolore magna aliqua'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CustomButtons(
              text: 'Get Started',
              color: Color(0xff4E74F9),
              buttonHeight: 54,
              buttonWidth: 335,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return FeesScreenView();
                    },
                  ),
                );
              },
              borderRadius: 12,
            ),
          ),
        ],
      ),
    );
  }
}
