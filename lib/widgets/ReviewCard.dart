import 'package:first_flutter_project/models/MoviesList.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatefulWidget {
  final Movies movie;
  ReviewCard({super.key, required this.movie});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    final reviews = widget.movie.reviews
        .map((e) => Container(
              constraints: BoxConstraints(maxWidth: 300, minWidth: 300),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0),
                    )
                  ]),
              child: Text('$e'),
            ))
        .toList();
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: reviews,
      ),
    );
  }
}
