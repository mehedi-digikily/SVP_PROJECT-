import 'package:flutter/material.dart';
import 'package:spv/ui/screen/login_screen.dart';

import '../widget/background_image.dart';
import '../widget/continue_button.dart';
import '../widget/style.dart';
import 'register_phone_number.dart';
import 'info_icon_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                            'Register',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2C1B5A),
                            ),
                          ),
                          const SizedBox(height: 10),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Email, BP Number",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF2C1B5A),
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "BP Number?",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF9C98A9),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.info),
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) =>
                                            const ShowBottomSheet(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: decoration(
                              'jonas_kahnwald@gmail.com',
                            ),
                          ),
                          const SizedBox(height: 187),
                          const ContinueButton(),
                          const SizedBox(height: 16),

                    // RegisterPhoneNumber
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2), // Blue border
                        borderRadius: BorderRadius.circular(30), // Rounded corners
                      ),
                      child: ElevatedButton.icon(
                          onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPhoneNumber(),
                                      ),);
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
                            Icons.phone, // Phone icon
                            color: Colors.purple, // Purple color for icon
                          ),
                          label: const Text(
                            "Register with Phone Number",
                            style: TextStyle(
                              color: Colors.purple, // Purple color for text
                              fontSize: 16,
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


