import 'package:advanced_flutter_mvvm/presentation/resources/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkPrimary,
      body: const Center(
        child: Text("Welcome To OnBoarding!"),
      ),
    );
  }
}
