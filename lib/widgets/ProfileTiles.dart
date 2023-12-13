import 'package:flutter/material.dart';

class ProfileTiles extends StatelessWidget {
  ProfileTiles(
      {super.key, required this.tileInfo, required this.icon, this.color});

  final String tileInfo;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade50,
      margin: EdgeInsets.only(left: 35, right: 35, bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          tileInfo, //? ** * **

          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: color),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.black54,
        ),
      ),
    );
  }
}
