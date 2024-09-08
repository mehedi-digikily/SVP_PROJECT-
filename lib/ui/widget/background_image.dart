import 'package:flutter/cupertino.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Column(
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s',
            fit: BoxFit.cover,
            height: 242,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
