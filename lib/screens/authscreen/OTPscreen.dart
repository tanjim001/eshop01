import 'package:eshop/widgets/otp.dart';
import 'package:flutter/material.dart';

class OTPscreen extends StatelessWidget {
  const OTPscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(),body: Column(children: [otp(context)],),));
  }
}