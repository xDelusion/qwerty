import 'package:first_flutter_project/widgets/VP_Widget.dart';
import 'package:flutter/material.dart';

class VideoPlayerCard extends StatelessWidget {
  VideoPlayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.grey.shade50,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: VideoPlayerWidget(
          videoUrl:
              'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.m4'),
    );
  }
}
