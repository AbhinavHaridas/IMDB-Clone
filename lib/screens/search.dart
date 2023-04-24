import "package:flutter/material.dart";
import "package:imdb_clone/screens/home.dart";

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
             TextField(
               decoration: InputDecoration(
                   labelText: "Search IMDB",
                   labelStyle: TextStyle(
                       color: Colors.black,
                       fontSize: 20
                   )
               ),
             )
          ],
        )
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
