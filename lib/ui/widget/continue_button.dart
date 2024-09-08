import 'package:flutter/material.dart';



class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Continue',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
