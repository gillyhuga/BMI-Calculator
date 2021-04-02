import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:praktikum2/dashboard.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "BMI Calculator",
          body: "Hitung dengan mudah dimanapun dan kapanpun.",
          image: Align(
            child: Image.asset('assets/images/Intro1.png', width: 350.0),
            alignment: Alignment.bottomCenter,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "BMI Calculator",
          body: "Hitung berat badan ideal dengan hanya satu genggaman tangan.",
          image: Align(
            child: Image.asset('assets/images/Intro2.png', width: 350.0),
            alignment: Alignment.bottomCenter,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "BMI Calculator",
          body: "Hidup sehat dengan lebih waspada terhadap berat badan.",
          image: Align(
            child: Image.asset('assets/images/Intro3.png', width: 350.0),
            alignment: Alignment.bottomCenter,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      ),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
