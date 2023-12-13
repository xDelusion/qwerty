import 'package:first_flutter_project/models/MoviesList.dart';
import 'package:first_flutter_project/widgets/MoviesGrid.dart';
import 'package:first_flutter_project/widgets/SortCard.dart';
import 'package:flutter/material.dart';

class Sorting extends StatefulWidget {
  Sorting({
    super.key,
  });
  @override
  State<Sorting> createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
  bool upcoming = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        Container(
          height: 90,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    upcoming = true;
                  });
                },
                child: SortCard(
                  sortType: 'Upcoming Releases',
                ),
              ),
              InkWell(
                onTap: () => {
                  setState(() {
                    upcoming = false;

                    Movies.sortNewToOld();
                  })
                },
                child: SortCard(
                  sortType: 'Latest to Oldest',
                ),
              ),
              InkWell(
                onTap: () => {
                  setState(() {
                    upcoming = false;
                    Movies.sortOldToNew();
                  })
                },
                child: SortCard(
                  sortType: 'Oldest to Latest',
                ),
              ),
            ],
          ),
        ),
        Expanded(child: MoviesGrid(upcoming: upcoming)),
      ]),
    );
  }
}
