import "package:flutter/material.dart";

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
        home: const Scaffold(
          backgroundColor: Colors.black,
            body: Center(
              child: Text("Featured today",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold
                ),),
          ),
          bottomNavigationBar: BottomNavbar(),
          ),
          );
  }
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.amberAccent,
      items: const [
      BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "home",
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "search",
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.video_collection_rounded),
          label: "video",
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: "profile",
      )
      ],
    );
  }
}

