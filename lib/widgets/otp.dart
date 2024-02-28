import 'dart:ffi';

import 'package:eshop/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

Widget otp(BuildContext context) {
  return OtpTextField(
    numberOfFields: 5,
    focusedBorderColor: redorange,
    //set to true to show as box or false to show as dash
    showFieldAsBox: true,
    autoFocus: true,
    //runs when a code is typed in
    onCodeChanged: (String code) {
      //handle validation or checks here
      if(code=="12345"){
        Navigator.pushNamed(context, "Recover");
      }
    },
    //runs when every textfield is filled
    onSubmit: (String verificationCode){
      if(verificationCode=="12345"){Navigator.pushNamed(context, "Recover");}
          else{
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code is Wrong"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
          }
    } , // end onSubmit
  );
}

