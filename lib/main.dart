import 'package:first_flutter_project/pages/Favorites.dart';
import 'package:first_flutter_project/pages/Home.dart';
import 'package:first_flutter_project/pages/Login.dart';
import 'package:first_flutter_project/pages/MovieInfo.dart';
import 'package:first_flutter_project/pages/Profile.dart';
import 'package:first_flutter_project/pages/Register.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => Login(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => Register(),
    ),
    GoRoute(
      path: '/movie/:movie',
      builder: (context, state) =>
          MovieInfo(movie: state.pathParameters['movie']),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => Profile(),
    ),
    GoRoute(
      path: '/favorites',
      builder: (context, state) => Favorites(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false, routerConfig: _router);
  }
}
