import 'package:eshop/constant/colors.dart';
import 'package:eshop/constant/decoration.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      showBackButton: true,
      showSkipButton: false,
      showDoneButton: false,
      back: "Back".text.fontWeight(FontWeight.w600).color(orange).make(),
      next: "Next".text.fontWeight(FontWeight.w600).color(orange).make(),
      skip: "Skip".text.fontWeight(FontWeight.w600).color(orange).make(),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeColor: orange,
        activeSize: const Size(20, 10),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 2),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      pages: [
        PageViewModel(
            title: "Shop Now",
            body: "",
            image: Image.asset(
              "assets/splash1.png",
              width: 200,
            ),
            decoration: pagedecoration),
        PageViewModel(
            title: "Big Discount",
            body: "",
            image: Image.asset(
              "assets/splash2.png",
              width: 200,
            ),
            decoration: pagedecoration),
        PageViewModel(
          title: "Free Delivery",
          body: "",
          image: Image.asset(
            "assets/splash3.png",
            width: 200,
          ),
          decoration: pagedecoration,
          footer: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: orange),
              child: const Text(
                "Let's Shop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
              Navigator.pushNamed(context, "LogIn");
              },
            ),
          ),
        )
      ],
    );
  }
}
