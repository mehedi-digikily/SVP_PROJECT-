import 'package:flutter/material.dart';

import 'package:spv/ui/screen/set_new_password.dart';

import '../widget/background_image.dart';

import '../widget/verification_code_filde.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.grey,
            ),
            // BG Image
            const BackgroundImage(),
            Positioned(
              top: 131,
              left: 16,
              right: 16,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                height: MediaQuery.sizeOf(context).height / 1.5,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16, bottom: 16, top: 36),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Verify phone number',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2C1B5A),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Enter the code that was sent to",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF9C98A9),
                            ),
                          ),
                          const Text(
                            '+20 512 450 4131',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4D308E),
                            ),
                          ),
                          const SizedBox(height: 24),
                          const VerificationCodeField(),
                          const SizedBox(height: 120),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const SetNewPassword(),));
                              },
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ]
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


