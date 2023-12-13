import 'package:flutter/material.dart';

class SortCard extends StatelessWidget {
  SortCard({super.key, required this.sortType});

  final String sortType;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxHeight: 80),
        padding: EdgeInsets.only(right: 2, left: 12, top: 20, bottom: 20),
        child: Container(
          child: Container(
            // color: Colors.amber.shade200,
            child: Column(children: [
              // Image.asset(
              //   "assets/images/HouseMD.jpg",
              //   height: 50,
              // ),
              Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 235, 238),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      sortType,
                      style: TextStyle(
                          fontFamily: '', fontWeight: FontWeight.w700),
                    ),
                  ))
            ]),
          ),
        ));
  }
}
