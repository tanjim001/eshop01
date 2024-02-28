import 'package:eshop/screens/authscreen/loginscreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class CuTextfield extends ConsumerWidget {
  final String hinttext;
  final IconData? iconData;
  final IconData? preffixiconData;
  final bool?obscuretext;
  final StateProvider provider;
  const CuTextfield({
    super.key,
    required this.hinttext,
    this.iconData,
    this.preffixiconData, this.obscuretext=false,required this.provider
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1), // Add a border with customization
        borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
      ),
      child: TextField(
        onChanged: (value){ref.read(provider.notifier).state=value;},
        obscureText: obscuretext==false?false:true,
        decoration: InputDecoration(
          hintText: hinttext,
          border: InputBorder.none, // Remove any default TextField border
          prefixIcon: Icon(preffixiconData),
          suffixIcon: Icon(iconData),
           // Use suffixIcon for icons on the right
        ),
      ),
    );
  }
}


/*TextField(
                  controller: TextEditingController(text: password),
                  onChanged: (value) =>
                      ref.read(passwordProvider.notifier).state = value,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.lock)),
                )
                    .box
                    .roundedSM
                    .padding(const EdgeInsets.only(top: 5, bottom: 5, left: 10))
                    .margin(const EdgeInsets.only(left: 10, right: 10))
                    .make()
                    .card
                    .white
                    .rounded
                    .make(),*/