import 'package:eshop/constant/colors.dart';
import 'package:eshop/widgets/button.dart';
import 'package:eshop/widgets/textfield.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

final phonenumberprovider = StateProvider<String>((ref) => "");

class PhoneNumber extends ConsumerWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final number = ref.watch(phonenumberprovider);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(elevation: 2,foregroundColor: redorange,),
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            50.heightBox,
            "Enter your Phone number".text.size(20).bold.gray700.make(),
            30.heightBox,
            "we will send otp code in a minute,check your inbox.".capitalized.text.size(14).semiBold.make(),
            10.heightBox,
            CuTextfield(hinttext: "Phone number", provider: phonenumberprovider),
            20.heightBox,
             CuButton(title: "Send OTP",onpress:()=>Navigator.pushNamed(context, "OTP"),)
          ],
        ),
      ),
    ));
  }
}
