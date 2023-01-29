import "package:flutter/material.dart";
import "package:imdb_clone/screens/home.dart";
import "package:imdb_clone/screens/signin.dart";
import "package:imdb_clone/screens/signup.dart";

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
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home: const SignUp(),
    );
  }
}


