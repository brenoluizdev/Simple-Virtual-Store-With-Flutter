import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();

  BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.green),
        Container(color: Colors.blue),
      ],
    );
  }
}