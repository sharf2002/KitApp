import 'package:flutter/material.dart';
import 'package:kit/features/home/persentation/view/widgets/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return HomeBody();
  }
}
