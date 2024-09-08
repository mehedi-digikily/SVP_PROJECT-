import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeField extends StatelessWidget {
  const VerificationCodeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 40,
        fieldWidth: 40,
        inactiveFillColor: const Color(0xFF9C98A9),
        inactiveColor: const Color(0xFF9C98A9),
        activeColor:  Colors.deepPurple,
        selectedFillColor: Colors.deepPurple,
        activeFillColor: Colors.deepPurple,
        selectedColor:Colors.deepPurple,
      ),
      // animationDuration: const Duration(milliseconds: 300),
      // backgroundColor: Colors.blue.shade50,
      // enableActiveFill: true,
      // // errorAnimationController: errorController,
      // // controller: textEditingController,
      // onCompleted: (v) {
      //   print("Completed");
      // },
      // onChanged: (value) {
      //   print(value);
      //   setState(() {
      //     currentText = value;
      //   });
      // },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      }, appContext: context,
    );
  }
}
