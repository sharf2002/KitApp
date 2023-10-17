import 'package:flutter/material.dart';
import 'package:kit/core/utils/widgets/custom_buttons.dart';
import 'package:kit/features/gurdian_screen/peresentation/view/gurdian_view.dart';

class FeesScreenBody extends StatelessWidget {
  const FeesScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 315),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xff848587),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 358,
                  child: Image.asset(
                    'assets/fees_screen_images/Ornament.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 245, left: 35),
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
                  padding: const EdgeInsets.only(top: 71, left: 32),
                  child: Text(
                    'Fees',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 128, left: 32),
                  child: Text(
                    'Lorem ipsum dolor sit amet,'
                    '\nconsectetur adipiscing elit, sed do'
                    '\neiusmod tempor incididunt dolore'
                    '\nmagna aliqua',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff6F6F79),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 215, left: 316),
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
                  padding: const EdgeInsets.only(top: 495),
                  child: Container(
                    width: 18,
                    height: 40,
                    child: Image.asset(
                      'assets/fees_screen_images/Ellipse 197.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 247),
                  child: Container(
                    width: 500,
                    height: 537,
                    child: Image.asset(
                      'assets/fees_screen_images/young-smiling-student-woman-white-background__1_-removebg-preview 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 721),
                  child: Center(
                    child: CustomButtons(
                      text: 'Next',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return GurdianView();
                            },
                          ),
                        );
                      },
                      borderRadius: 12,
                      buttonWidth: 335,
                      buttonHeight: 54,
                      color: Color(0xff4E74F9),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
