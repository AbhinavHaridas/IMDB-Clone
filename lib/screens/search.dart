import "package:flutter/material.dart";
import "package:imdb_clone/screens/home.dart";

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Search")
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
