import 'package:flutter/material.dart';

import '../widget/app_bar_leading.dart';
import '../widget/app_bar_trailing.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 64,
          backgroundColor: Colors.white,
          leading: const AppBarLeading(),
          actions: const [
            AppBarTrailing(),
          ],
        ),
      ),
    );
  }
}


