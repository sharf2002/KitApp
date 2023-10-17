import 'package:flutter/material.dart';
import 'package:kit/core/utils/widgets/custom_buttons.dart';
import 'package:kit/features/fees_screen/peresentation/view/fees_screen_view.dart';
import 'package:kit/features/home/persentation/view/home_view.dart';

class GurdianBody extends StatelessWidget {
  const GurdianBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 67),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return FeesScreenView();
                            },
                          ),
                        );
                      },
                      child: Icon(Icons.arrow_back)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 111),
                  child: Text(
                    'Add a gurdian',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 172),
                  child: Text(
                    'Give access to another guardian',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff4E74F9),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Mobile',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Color(0xffA3A3AE)),
                  hintText: '91+9876543210',
                  prefixIcon: Icon(
                    Icons.smartphone,
                    color: Color(0xff6F6F79),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xffE9E9F1))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Confirm mobile',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Color(0xffA3A3AE)),
                  hintText: '91+9876543210',
                  prefixIcon: Icon(
                    Icons.smartphone,
                    color: Color(0xff6F6F79),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xffE9E9F1))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomButtons(
                text: 'Give Access',
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                    builder: (context) {
                      return HomeView();
                    },
                  ), (route) => false);
                },
                borderRadius: 12,
                buttonWidth: double.infinity,
                buttonHeight: 54,
                color: Color(0xff4E74F9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
