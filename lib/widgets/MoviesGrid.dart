import 'package:first_flutter_project/models/MoviesList.dart';
import 'package:first_flutter_project/widgets/MovieCard.dart';
import 'package:flutter/material.dart';

class MoviesGrid extends StatefulWidget {
  final bool upcoming;
  MoviesGrid({super.key, required this.upcoming});

  @override
  State<MoviesGrid> createState() => _MoviesGridState();
}

class _MoviesGridState extends State<MoviesGrid> {
  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;

    final movies = widget.upcoming
        ? Movies.movieData
            .where((movie) => movie.releaseYear >= currentYear)
            .toList()
        : Movies.movieData;
    return Padding(
      padding: EdgeInsets.only(
        bottom: 5,
      ),
      child: Expanded(
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 35,
            crossAxisSpacing: 30,
          ),
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 50, top: 10),
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return MovieCard(
              pic: movies[index].moviePic,
              title: movies[index].movieTitle,
              rating: movies[index].movieRating,
              movie: movies[index].movieTitle,
              // description: Movies.movieData[index].description,
            );
          },
        ),
      ),
    );
  }
}
