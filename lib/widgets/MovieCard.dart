// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stroke_text/stroke_text.dart';

class MovieCard extends StatelessWidget {
  MovieCard(
      {super.key,
      required this.pic,
      required this.title,
      required this.rating,
      required this.movie});

  final String pic;
  final String title;
  final double rating;
  final String movie;

  @override
  Widget build(BuildContext context) {
    // // Check if the file exists
    // File imageFile = File(pic);
    // if (!imageFile.existsSync()) {
    //   // Return an empty container if the file doesn't exist
    //   return Container();
    // }
    return InkWell(
      onTap: () => context.go('/movie/$movie'),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 5,
                    color: Colors.black87,
                    offset: Offset(0, 0))
              ],
              image:
                  DecorationImage(image: NetworkImage(pic), fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.shade200.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StrokeText(
                    text: title,
                    textStyle: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              blurRadius: 5,
                              offset: Offset(1, 2))
                        ],
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                    strokeWidth: 3,
                  ),
                  StrokeText(
                    text: '⭐ $rating',
                    textStyle: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              blurRadius: 5,
                              offset: Offset(1, 2))
                        ],
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                    strokeWidth: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
