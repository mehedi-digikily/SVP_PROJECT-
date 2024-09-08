import 'package:flutter/material.dart';

class AppBarTrailing extends StatelessWidget {
  const AppBarTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16,top: 16,right: 24),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          CircleAvatar(
            backgroundColor: Colors.red,
            child: Image.asset('images/assets/profile_picture.jpg',fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}
