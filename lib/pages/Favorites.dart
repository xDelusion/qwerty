import 'package:first_flutter_project/models/MoviesList.dart';
import 'package:first_flutter_project/widgets/MovieCard.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 35,
          crossAxisSpacing: 30,
        ),
        padding: EdgeInsets.only(left: 30, right: 30),
        itemCount: Movies.movieData.length,
        itemBuilder: (context, index) {
          return MovieCard(
            pic: Movies.movieData[index].moviePic,
            title: Movies.movieData[index].movieTitle,
            rating: Movies.movieData[index].movieRating,
            movie: Movies.movieData[index].movieTitle,
            // description: Movies.movieData[index].description,
          );
        },
      ),
    );
  }
}
