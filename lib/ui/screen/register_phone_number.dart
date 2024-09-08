import 'package:flutter/material.dart';
import 'package:spv/ui/screen/login_screen.dart';
import 'package:spv/ui/screen/register_mail.dart';
import 'package:spv/ui/screen/verify_code_phone_number.dart';

import '../widget/background_image.dart';
import '../widget/phone_number_field.dart';

class RegisterPhoneNumber extends StatefulWidget {
  const RegisterPhoneNumber({super.key});

  @override
  State<RegisterPhoneNumber> createState() => _RegisterPhoneNumberState();
}

class _RegisterPhoneNumberState extends State<RegisterPhoneNumber> {
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
                      right: 16, left: 16, bottom: 16, top: 24),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2C1B5A),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Do you have an account?",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF9C98A9),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LogInScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  ' Log In',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF4D308E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          const Text(
                            "Phone Number",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2C1B5A),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const PhoneNumberField(),
                          const SizedBox(height: 120),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyPhoneNumber(),));
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
                          // Register with Email
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue, width: 2), // Blue border
                                borderRadius: BorderRadius.circular(30), // Rounded corners
                              ),
                              child: ElevatedButton.icon(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, // Background color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30), // Same rounded corners
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                  elevation: 0, // Removes shadow
                                ),
                                icon: const Icon(
                                  Icons.mail, // Phone icon
                                  color: Color(0xFF4D308E),
                                ),
                                label: const Text(
                                  "Register with Email or BP",
                                  style: TextStyle(
                                    color: Color(0xFF4D308E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                          ),
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



