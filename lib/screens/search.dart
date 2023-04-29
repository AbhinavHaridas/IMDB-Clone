import "package:flutter/material.dart";
import "package:imdb_clone/screens/home.dart";

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white10,
          actions: [
            TextField(
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  labelText: "Search IMDB",
                  labelStyle: TextStyle(color: Colors.black)),
              onTap: () {
                // showSearch(context: context, delegate: SearchDelegate());
              },
            ),
          ],
        ),
        body: Column(
          children: [
            // Search Container
            Container(
              color: Colors.white10,
              child: Text("Search Page"),
            )
          ],
        ));
  }
}

class SearchDelegate extends SearchScreen {
  @override
  Widget? buildLeading(BuildContext context) =>
      IconButton(onPressed: () {}, icon: const Icon(Icons.clear));

  @override
  List<Widget>? buildAction(BuildContext context) {
    return null;
  }

  @override
  Widget? buildResult(BuildContext context) {
    return null;
  }

  @override
  Widget? buildSuggestions(BuildContext context) {
    return null;
  }
}
