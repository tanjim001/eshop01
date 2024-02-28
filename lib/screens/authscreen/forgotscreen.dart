import 'package:eshop/constant/colors.dart';
import 'package:eshop/screens/authscreen/loginscreen.dart';
import 'package:eshop/widgets/button.dart';
import 'package:eshop/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

final forgetPasswordProvider = StateProvider((ref) => "");

class ForgotPassword extends ConsumerWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(forgetPasswordProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          foregroundColor: redorange,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              "Forget Password".text.size(24).bold.gray700.make(),
              40.heightBox,
              "Enter your email.we will send link to reset your password.check your email.click the link."
                  .text
                  .semiBold.gray400.capitalize
                  .size(12)
                  .make(),
              10.heightBox,
              CuTextfield(
                hinttext: "Enter your Email",
                provider: forgetPasswordProvider,
                preffixiconData: Icons.email,
              ),
              30.heightBox,
              CuButton(
                title: "Send Link",
                onpress: () => Navigator.pushNamed(context, "Recovery"),
              ),
              20.heightBox,
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "Phone");
                  },
                  child: "Verify with phone number".text.gray600.make(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
