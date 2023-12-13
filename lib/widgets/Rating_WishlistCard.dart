import 'package:first_flutter_project/models/MoviesList.dart';
import 'package:flutter/material.dart';

class Rating_WishlistCard extends StatelessWidget {
  final Movies movie;
  Rating_WishlistCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('⭐ ${movie.movieRating}/10'),
        ],
      ),
    );
  }
}
