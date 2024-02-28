import 'package:eshop/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CuButton extends StatelessWidget {
  final String?title;
  final Function?onpress;
  const CuButton({super.key,this.title,this.onpress});

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
                  onPressed:(){onpress!();},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55),
                      backgroundColor: redorange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: title!.text.capitalize.white.size(18).make(),
                );
  }
}


