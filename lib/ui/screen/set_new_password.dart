import 'package:flutter/material.dart';
import 'package:spv/ui/screen/login_screen.dart';

import '../widget/background_image.dart';
import '../widget/style.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {

  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

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
                          "Welcome Ahmed 👋",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9C98A9),
                          ),
                        ),
                        const Text(
                          'Create your password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C1B5A),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Wrap(
                           alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: [
                            Text(
                              "Please Sign up to continue to your account.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF9C98A9),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C1B5A),
                          ),
                        ),
                        const SizedBox(height: 12),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: decoration(
                        'Password',

                      ),
                    ),
                      const SizedBox(height: 16),
                        const Text(
                          "Confirm Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C1B5A),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          decoration: decoration(
                            'Re-confirm your password',
                        ),
                        ),
                        const SizedBox(height: 140),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LogInScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 18,color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
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
