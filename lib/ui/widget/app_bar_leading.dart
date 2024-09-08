import 'package:flutter/cupertino.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8,top: 8,left: 24),
      child: SizedBox(
        width: 77,
        height: 36,
        child: Image.asset('images/assets/AppBarlogo.jpg',fit: BoxFit.fitWidth,),),
    );
  }
}
