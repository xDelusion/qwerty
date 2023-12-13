import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_flutter_project/widgets/ProfileTiles.dart';
import 'package:first_flutter_project/widgets/Social_Icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

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
            height: 50,
            backgroundColor: Colors.transparent,
            color: Colors.white.withOpacity(0.97),
            items: [
              InkWell(
                  onTap: () {
                    context.go('/profile');
                  },
                  child: Icon(Icons.person_3_sharp)),
              InkWell(
                  onTap: () {
                    context.go('/');
                  },
                  child: Icon(Icons.home)),
              InkWell(
                  onTap: () {
                    context.go('/');
                  },
                  child: Icon(Icons.favorite)),
            ]),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.black26),
          title: Text(
            'My Profile',
            style:
                TextStyle(fontWeight: FontWeight.w600, fontFamily: 'ROUNDED'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
            )
          ],
          leading: BackButton(onPressed: () => context.go('/')),
          toolbarHeight: 35,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  maxRadius: 80,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/4140/4140048.png',
                    width: 165,
                    height: 165,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Social_Icons(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "John Doe",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("@john.doe98")],
            ),
            Container(
              child: Expanded(
                  child: ListView(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ProfileTiles(
                      tileInfo: 'Help & Support', icon: Icons.help_outlined),
                  SizedBox(
                    height: 5,
                  ),
                  ProfileTiles(
                      tileInfo: 'Settings', icon: Icons.privacy_tip_sharp),
                  SizedBox(
                    height: 45,
                  ),
                  InkWell(
                    onTap: () => context.go('/login'),
                    child: ProfileTiles(
                      tileInfo: 'Logout',
                      icon: Icons.logout,
                      color: Colors.red.shade300,
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
