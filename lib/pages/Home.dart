import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_flutter_project/models/MoviesList.dart';
// import 'package:first_flutter_project/widgets/MoviesGrid.dart';
import 'package:first_flutter_project/widgets/Sorting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  Home({super.key, this.description, this.movie});

  final String? description;
  final String? movie;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(Icons.favorite, size: 20),
    Icon(Icons.home, size: 20),
    Icon(Icons.person, size: 20),
  ];

  int index = 2;

  List<Movies> searchResults = [];

  void onSearchField(String query) {
    setState(() {
      if (query.isNotEmpty) {
        searchResults = Movies.movieData
            .where((item) =>
                item.movieTitle.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        // Clear the search results when the query is empty
        searchResults.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.cyan.shade100, Colors.orange.shade100])),
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: index,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
            if (selectedIndex == 2) {
              context.go('/profile');
            }
          },
          height: 50,
          backgroundColor: Colors.transparent,
          color: Colors.white,
          // animationDuration: Duration(milliseconds: 300),
        ),
        // CurvedNavigationBar(
        //     height: 50,
        //     backgroundColor: Colors.transparent,
        //     color: Colors.white.withOpacity(0.97),
        //     items: [
        //       InkWell(
        //           onTap: () {
        //             context.go('/');
        //           },
        //           child: Icon(Icons.home)),
        //       InkWell(
        //           onTap: () {
        //             context.go('/');
        //           },
        //           child: Icon(Icons.favorite)),
        //       InkWell(
        //           onTap: () {
        //             context.go('/profile');
        //           },
        //           child: Icon(Icons.person_3_sharp))
        //     ]),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.black26),
          title: Padding(
            padding: EdgeInsets.only(left: 5, top: 15),
            child: Text(
              'Watch Now',
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontFamily: 'ROUNDED'),
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20, top: 15),
                child: InkWell(
                    onTap: () => context.go('/profile'),
                    child: Icon(Icons.person)))
          ],
          toolbarHeight: 35,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20),
              SearchBar(
                  onChanged: onSearchField,
                  hintText: 'Search ...',
                  constraints: BoxConstraints(maxWidth: 350, minHeight: 45),
                  leading: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  )),
              SizedBox(height: 15),

              if (searchResults.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemCount: searchResults.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 28), // Add vertical and left padding
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              8), // Adjust the radius as needed
                          child: Image.network(
                            searchResults[index].moviePic,
                            width: 40, // Adjust the width as needed
                            height: 60, // Adjust the height as needed
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text(searchResults[index].movieTitle),
                      );
                    },
                  ),
                ),
              if (searchResults.isEmpty) Sorting(), //? Sorting ** * **
            ],
          ),
        ),
      ),
    );
  }

// Widget getSelectedWidget({required int index}){
//   Widget widget;
//   switch(index){
//     case 0:
//     widget = Favorites();
//     break;

//     case 1:
//     widget = Home();
//     break;

//     case 2:
//     widget = Profile();
//     break;

//     default: widget = Home();
//     break;
//   }
// }
}
