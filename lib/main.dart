import 'package:eshop/constant/colors.dart';
import 'package:eshop/screens/authscreen/OTPscreen.dart';
import 'package:eshop/screens/authscreen/forgotscreen.dart';
import 'package:eshop/screens/authscreen/loginscreen.dart';
import 'package:eshop/screens/cartscreen.dart';
import 'package:eshop/screens/favoritescreen.dart';
import 'package:eshop/screens/homescreen.dart';
import 'package:eshop/screens/introduction/onboardingscreen.dart';
import 'package:eshop/screens/authscreen/phonenumberscreen.dart';
import 'package:eshop/screens/authscreen/recoveryscreen.dart';
import 'package:eshop/screens/authscreen/registerscreen.dart';
import 'package:eshop/screens/introduction/splashscreen.dart';
import 'package:eshop/screens/navigationscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ECommerce Sopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: orange),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "Intro": (context) => const OnboardingScreen(),
        "LogIn": (context) => const LoginScreen(),
        "Register":(context) => const RegisterScreen(),
        "Recovery":(context)=>const RecoveryScreen(),
        "Forget":(context) =>const ForgotPassword(),
        "Phone":(context) => const PhoneNumber(),
        "OTP":(context) => const OTPscreen(),
        "Recover":(context) => const RecoveryScreen(),
        "Navscreen":(context) => const NavigationScreen(),

      },
    );
  }
}
