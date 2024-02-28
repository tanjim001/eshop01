import 'package:eshop/widgets/button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:eshop/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

final newpassword = StateProvider<String>((ref) => "");
final confirmpassword = StateProvider<String>((ref) => "");

class RecoveryScreen extends ConsumerWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newpass=ref.watch(newpassword);
     final conpass=ref.watch(confirmpassword);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.heightBox,
            "please enter your new password: ".capitalized.text.size(16).semiBold.gray600.make(),
            10.heightBox,
            CuTextfield(hinttext: "Enter New password", provider: newpassword,obscuretext: true,preffixiconData: Icons.lock,iconData: Icons.visibility,),
            20.heightBox,
            CuTextfield(hinttext: "Confirm password", provider: confirmpassword,obscuretext: true,preffixiconData: Icons.lock,iconData: Icons.visibility),
            20.heightBox,
            const CuButton(title: "Reset",)
          ],
        ),
      ),
    ));
  }
}
