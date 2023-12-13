// import 'package:first_flutter_project/models/MoviesList.dart';
// import 'package:flutter/material.dart';

// class MySearchBar extends StatefulWidget {
//   MySearchBar({super.key});

//   @override
//   State<MySearchBar> createState() => _MySearchBarState();
// }

// class _MySearchBarState extends State<MySearchBar> {
//   List<Movies> searchResults = [];

//   void onSearchField(String query) {
//     setState(() {
//       if (query.isNotEmpty) {
//         searchResults = Movies.movieData
//             .where((item) =>
//                 item.movieTitle.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//       } else {
//         // Clear the search results when the query is empty
//         searchResults.clear();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SearchBar(
//             onChanged: onSearchField,
//             hintText: 'Search ...',
//             constraints: BoxConstraints(maxWidth: 350, minHeight: 45),
//             leading: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Icon(Icons.search),
//             )),
//         SizedBox(height: 15),
//         Expanded(
//           child: ListView.builder(
//             itemCount: searchResults.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 contentPadding: EdgeInsets.symmetric(
//                     vertical: 8.0,
//                     horizontal: 28), // Add vertical and left padding
//                 leading: ClipRRect(
//                   borderRadius:
//                       BorderRadius.circular(8.0), // Adjust the radius as needed
//                   child: Image.network(
//                     searchResults[index].moviePic,
//                     width: 40, // Adjust the width as needed
//                     height: 60, // Adjust the height as needed
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 title: Text(searchResults[index].movieTitle),
//               );
//             },
//           ),
//         )
//       ],
//     );
//   }
// }
