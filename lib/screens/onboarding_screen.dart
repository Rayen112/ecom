import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(
          fontSize: 19,
        ),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: "Shop Now",
            body:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            image: RepaintBoundary(
              child: Image.asset(
                "assets/images/splash1.png",
                width: 200,
                cacheHeight: 400,
                cacheWidth: 400,
              ),
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: "Big Discount",
            body:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            image: RepaintBoundary(
              child: Image.asset(
                "assets/images/splash2.png",
                width: 200,
                cacheHeight: 400,
                cacheWidth: 400,
              ),
            ),
            decoration: pageDecoration),
        PageViewModel(
          title: "Free Delivery",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          image: RepaintBoundary(
            child: Image.asset(
              "assets/images/splash3.png",
              width: 200,
              cacheHeight: 400,
              cacheWidth: 400,
            ),
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xFFEf6969),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: const Text(
                "Let's Shop",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: const Text(
        "Back",
        style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFFEF6969)),
      ),
      next: const Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFFEF6969)),
      ),
      done: const Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFFEF6969)),
      ),
      skip: const Text(
        "Skip",
        style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFFEF6969)),
      ),
      scrollPhysics: const BouncingScrollPhysics(),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Color(0xFFEf6969),
          color: Colors.black,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )),
    );
  }
}
