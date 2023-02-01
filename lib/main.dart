import "package:flutter/material.dart";
import "package:imdb_clone/screens/home.dart";
import 'package:imdb_clone/screens/profile.dart';
import 'package:imdb_clone/screens/search.dart';
import "package:imdb_clone/screens/signin.dart";
import "package:imdb_clone/screens/signup.dart";
import 'package:imdb_clone/screens/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "IMDB Clone",
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
          "/": (context) => const SignIn(),
        "/home": (context) => const HomeScreen(),
        "/signup": (context) => const SignUp(),
        "/search": (context) => const SearchPage(),
        "/video": (context) => const VideoPage(),
        "/profile": (context) => const ProfilePage()
      },
    );
  }
}


