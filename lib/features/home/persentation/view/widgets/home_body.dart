import 'package:flutter/material.dart';
import 'package:kit/core/utils/widgets/custom_buttons.dart';
import 'package:kit/features/home/persentation/view/home_view.dart';
import 'package:kit/features/meet_screen/view/meet_view.dart';

import '../../../../chat_screen/chat_screen.dart';
import '../../../../info_screen/info_screen.dart';
import '../../../../notification_screen/persentation/view/widgets/notification_body.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List product = [
    {
      'image': 'assets/home_images/image 8.png',
      'text': 'Accounting',
      'hintText': '20 Courses'
    },
    {
      'image': 'assets/home_images/69001270-removebg-preview (1) 1.png',
      'text': 'Bioloogy',
      'hintText': '15 Courses'
    },
    {
      'image': 'assets/home_images/image 7.png',
      'text': 'Photography',
      'hintText': '25 Courses'
    },
    {
      'image':
          'assets/home_images/124-1247062_digital-marketing-illustration-png-transparent-png-removebg-preview 1.png',
      'text': 'Marketing ',
      'hintText': '18 Courses'
    },
    {
      'image': 'assets/home_images/UH14stzbXl4OZHrz-removebg-preview 1.png',
      'text': 'Photography',
      'hintText': '18 Courses'
    },
    {
      'image':
          'assets/home_images/124619001-microscope-test-tubes-and-atom-science-vector-illustration-removebg-preview 1.png',
      'text': 'Photography',
      'hintText': '18 Courses'
    },
  ];
  int selectedIndex = 0;
  List nav = [HomeView(),Chats(), NotificationBody(),Info()];

  @override
  Widget build(BuildContext context) {
    return

      SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Stack(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(10),
                         child: Image.asset('assets/home_images/Rectangle 19.png'),
                       ),
                       Image.asset(
                         'assets/home_images/Circle.png',
                         height: 220,
                         width: 255,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 34, left: 300),
                         child: Image.asset(
                           'assets/home_images/bg.png',
                           width: 41,
                           height: 41,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 38, left: 309),
                         child: Image.asset(
                           'assets/home_images/Group.png',
                           height: 30,
                           width: 30,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 45, left: 324),
                         child: Image.asset(
                           'assets/home_images/Ellipse 190.png',
                           width: 6,
                           height: 6,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 39, left: 32),
                         child: Text(
                           'Hello,\ngood Morning',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.w400,
                             color: Colors.white,
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 134, left: 32, right: 32),
                         child: SearchBar(
                           shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                                 (Set<MaterialState> states) {
                               return RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(100),
                                 side: BorderSide(color: Colors.white),
                               );
                             },
                           ),
                           elevation: const MaterialStatePropertyAll<double>(0),
                           hintText: 'Search',
                           hintStyle: MaterialStateProperty.resolveWith(
                                 (states) => TextStyle(
                               color: Color(0xffB7B7B7),
                             ),
                           ),
                           backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                                 (Set<MaterialState> states) {
                               return Color(0xffFEFDFE);
                             },
                           ),
                           padding: const MaterialStatePropertyAll<EdgeInsets>(
                               EdgeInsets.symmetric(horizontal: 16.0)),
                           leading: Image.asset(
                             'assets/home_images/Group (1).png',
                             height: 25,
                             width: 25,
                           ),
                         ),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Row(
                       children: [
                         Expanded(
                           child: Text(
                             'Explore categories',
                             style: TextStyle(
                               fontWeight: FontWeight.w700,
                               fontSize: 24,
                             ),
                           ),
                         ),
                         Text(
                           'See all',
                           style: TextStyle(
                             fontWeight: FontWeight.w500,
                             fontSize: 14,
                             color: Color(0xff4D8AF0),
                           ),
                         ),
                       ],
                     ),
                   ),
                   GridView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemCount: product.length,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       mainAxisSpacing: 15,
                       crossAxisSpacing: 15,
                     ),
                     itemBuilder: (context, index) {
                       return Container(
                         width: 153,
                         height: 160,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(15),
                         ),
                         child: Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 20),
                               child: Image.asset(
                                 product[index]['image'],
                                 width: 94,
                                 height: 94,
                               ),
                             ),
                             Container(
                               width: 120,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     product[index]['text'],
                                     style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w700,
                                     ),
                                   ),
                                   Text(
                                     product[index]['hintText'],
                                     style: TextStyle(
                                       fontSize: 13,
                                       fontWeight: FontWeight.w500,
                                       color: Color(0xff727272),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       );
                     },
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           width: MediaQuery.of(context).size.width * 0.5,
                           color: Colors.grey,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Stack(
                                 children: [
                                   Image.asset(
                                     'assets/home_images/Rectangle 1184.png',
                                     width: 196,
                                     height: 129,
                                   ),
                                   Image.asset(
                                     'assets/home_images/portrait-asian-woman-teacher_1258-13821-removebg-preview 1.png',
                                     width: 196,
                                     height: 129,
                                   ),
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 20),
                                 child: Stack(
                                   children: [
                                     Image.asset(
                                       'assets/home_images/Rectangle 1186.png',
                                       width: 114,
                                       height: 108,
                                     ),
                                     Image.asset(
                                       'assets/home_images/161-1615078_female-teacher-png-transparent-png-download-removebg-preview 1.png',
                                       width: 113,
                                       height: 114,
                                     ),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 20),
                                 child: Stack(
                                   children: [
                                     Image.asset(
                                       'assets/home_images/Rectangle 1188.png',
                                       width: 151,
                                       height: 138,
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 25),
                                       child: Image.asset(
                                         'assets/home_images/[removal 1.png',
                                         width: 104,
                                         height: 138,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width * 0.5,
                           color: Colors.yellow,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               Stack(
                                 children: [
                                   Image.asset(
                                     'assets/home_images/Rectangle 1185.png',
                                     width: 171,
                                     height: 222,
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 30),
                                     child: Image.asset(
                                       'assets/home_images/portrait-young-male-teacher-light-background_99433-2422-removebg-preview 1.png',
                                       width: 137,
                                       height: 222,
                                     ),
                                   ),
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 20),
                                 child: Stack(
                                   children: [
                                     Image.asset(
                                       'assets/home_images/Rectangle 1187.png',
                                       width: 146,
                                       height: 140,
                                     ),
                                     Padding(
                                       padding:
                                       const EdgeInsets.only(left: 30, top: 3),
                                       child: Image.asset(
                                         'assets/home_images/handsome-businessman-suit-glasses-cross-arms-chest-look_176420-21750-removebg-preview 1.png',
                                         width: 113,
                                         height: 137,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Text(
                       'True masters in\ntheir fields,\nready to teach you',
                       style: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 30,
                         color: Color(0xff161C2B),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: CustomButtons(
                       text: 'Meet experts',
                       onPressed: () {
                         Navigator.of(context).push(
                           MaterialPageRoute(
                             builder: (context) {
                               return MeetScreenView();
                             },
                           ),
                         );
                       },
                       borderRadius: 10,
                       buttonWidth: 142,
                       buttonHeight: 58,
                       color: Color(0xff4E74F9),
                     ),
                   ),
                 ],
               ),
             );

  }
}
