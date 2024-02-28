import 'package:eshop/constant/colors.dart';
import 'package:eshop/widgets/button.dart';
import 'package:eshop/widgets/textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

final emailProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    if (kDebugMode) {
      print(email+" "+password);
    }
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
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {Navigator.pushNamed(context, "Forget");},
                      child: "forgot password"
                          .text
                          .color(orange)
                          .capitalize
                          .make()),
                ),
                30.heightBox,
                 CuButton(
                  title: "log in",onpress: ()=>Navigator.pushNamed(context, "Navscreen"),
                ),
                10.heightBox,
                "or".capitalized.text.make(),
                10.heightBox,
                TextButton(child: "Don't have an account? sign up".text.make(),onPressed: (){Navigator.pushNamed(context, "Register");},)
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
  }
}
