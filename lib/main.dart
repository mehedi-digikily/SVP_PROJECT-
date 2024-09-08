import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spv/ui/screen/login_screen.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogInScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFA594C5),
            minimumSize: const Size(double.infinity, 50),
            // Full-width button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ),
    );
  }
}
