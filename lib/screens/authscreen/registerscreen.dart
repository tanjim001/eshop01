import 'package:eshop/constant/colors.dart';
import 'package:eshop/screens/authscreen/loginscreen.dart';
import 'package:eshop/widgets/button.dart';
import 'package:eshop/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

final usernameProvider = StateProvider<String>((ref) => '');
final cpasswordProvider = StateProvider<String>((ref) => '');
final phoneProvider = StateProvider<String>((ref) => '');

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username=ref.watch(usernameProvider);
    final phone=ref.watch(phoneProvider);
    final confirm=ref.watch(cpasswordProvider);
    
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.only(top: 180),
          shrinkWrap: false,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/freed.png"),
                40.heightBox,
                CuTextfield(
                  hinttext: 'Username',
                  preffixiconData: Icons.person,
                  provider: usernameProvider,
                ),
                10.heightBox,
                CuTextfield(
                  hinttext: 'Phone Number',
                  preffixiconData: Icons.call,
                  provider: phoneProvider,
                ),10.heightBox,
                CuTextfield(
                  hinttext: 'Enter your Email',
                  preffixiconData: Icons.email,
                  provider: emailProvider,
                ),
                10.heightBox,
                CuTextfield(
                  hinttext: "Password",
                  obscuretext: true,
                  iconData: Icons.remove_red_eye,
                  preffixiconData: Icons.lock,
                  provider: passwordProvider,
                ),10.heightBox,
                CuTextfield(
                  hinttext: "confirm Password",
                  obscuretext: true,
                  iconData: Icons.remove_red_eye,
                  preffixiconData: Icons.lock,
                  provider: cpasswordProvider,
                ),
                
                30.heightBox,
                const CuButton(
                  title: "Register",
                ),
                10.heightBox,
                "or".capitalized.text.size(14).semiBold.gray500.make(),
                10.heightBox,
                TextButton(
                  child: "Already have? Sign in".text.gray700.make(),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
                .box
                .padding(
                  const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                )
                .white
                .make(),
          ],
        ),
      ),
    );
    ;
  }
}
