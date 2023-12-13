// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_flutter_project/models/MoviesList.dart';
import 'package:first_flutter_project/widgets/AddReviewCard.dart';
import 'package:first_flutter_project/widgets/DescriptionCard.dart';
import 'package:first_flutter_project/widgets/Rating_WishlistCard.dart';
import 'package:first_flutter_project/widgets/ReviewCard.dart';
import 'package:first_flutter_project/widgets/VideoPlayerCard.dart';
// import 'package:first_flutter_project/widgets/VideoPlayerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class MovieInfo extends StatefulWidget {
  MovieInfo({super.key, required this.movie});
  final movie;

  @override
  State<MovieInfo> createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {
  // final items = const [
  //   Icon(Icons.favorite, size: 20),
  //   Icon(Icons.home, size: 20),
  //   Icon(Icons.person, size: 20),
  // ];

  // int index = 1;

  @override
  Widget build(BuildContext context) {
    final movie = Movies.movieData
        .firstWhere((movie) => movie.movieTitle == widget.movie);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.cyan.shade100, Colors.orange.shade100])),
      child: Scaffold(
        extendBody: true,
        // bottomNavigationBar: CurvedNavigationBar(
        //   items: items,
        //   index: index,
        //   onTap: (selectedIndex) {
        //     setState(() {
        //       index = selectedIndex;
        //     });
        //   },
        //   height: 50,
        //   backgroundColor: Colors.transparent,
        //   color: Colors.white,
        //   animationDuration: Duration(milliseconds: 300),
        // ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.black26),
          leading: BackButton(
            style: ButtonStyle(),
            onPressed: () => context.go('/'),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 70),
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(widget.movie),
                ],
              ),
            ),

            VideoPlayerCard(), // ? Video Player ** * **

            SizedBox(height: 15),

            Rating_WishlistCard(movie: movie), // ? Rating & Wishlist ** * **

            SizedBox(height: 15),
            Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),

            DescriptionCard(movie: movie), //? Description ** * **

            SizedBox(height: 15),

            AddReview(), //? Add Review ** * **

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.only(bottom: 10),

              child: ReviewCard(movie: movie), //? Review Card ** * **
            ),
          ]),
        ),
      ),
    );
  }
}
