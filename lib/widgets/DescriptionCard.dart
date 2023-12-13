import 'package:first_flutter_project/models/MoviesList.dart';
import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  final Movies movie;
  DescriptionCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 30),
        child: Text(
          "${movie.description}",
          style: TextStyle(),
        ),
      ),
    );
  }
}
