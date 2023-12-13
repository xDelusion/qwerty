import 'package:flutter/material.dart';

class Social_Icons extends StatelessWidget {
  const Social_Icons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/images/whatsapp.png'),
          // backgroundImage: AssetImage("assets/download.png"),
        ),
        SizedBox(
          width: 15,
        ),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/images/linkedin.png"),
        ),
        SizedBox(
          width: 15,
        ),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/images/instagram.png"),
          radius: 23.5,
        ),
        SizedBox(
          width: 15,
        ),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/images/github.png"),
        )
      ],
    );
  }
}
