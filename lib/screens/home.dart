import "package:flutter/material.dart";
import 'package:imdb_clone/screens/profile.dart';
import 'package:imdb_clone/screens/search.dart';
import 'package:imdb_clone/screens/video.dart';

import '../reuseableWidgets/movieList.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, dynamic>? data;
  const HomeScreen({this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.white10,
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
              ),
              child: Column(
                children: [
                  Column(
                    // Featured Today Section
                    children: const [
                      Heading(title: "Featured today"),
                      FeaturedToday()
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white10,
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: Column(
                children: const [
                  Heading(title: "What to watch"),
                  MovieTile(
                    title: "From your Watchlist",
                    description:
                        "Shows and movies available to watch from your watch list",
                    names: [
                      "The God Father",
                      "Casablanca",
                      "The Shawshank Redemption",
                      "The Dark Knight",
                      "Citizen Kane",
                      "Schindler's List",
                      "Pulp Fiction",
                      "Titanic",
                      "Goodfellas"
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white10,
              margin: const EdgeInsets.only(top: 15.0),
              padding: const EdgeInsets.only(bottom: 30.0),
              child: const MovieTile(
                  title: "Top picks for you",
                  description: "TV shows and movies just for you",
                  names: [
                    "The God Father",
                    "Casablanca",
                    "The Shawshank Redemption",
                    "The Dark Knight",
                    "Citizen Kane",
                    "Schindler's List",
                    "Pulp Fiction",
                    "Titanic",
                    "Goodfellas"
                  ],
              ),
            ),
            Container(
              color: Colors.white10,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(bottom: 30.0),
              child: const MovieTile(
                  title: "Fan favourites",
                  description: "This week's top TV shows and movies",
                  names: ["The God Father",
                    "Casablanca",
                    "The Shawshank Redemption",
                    "The Dark Knight",
                    "Citizen Kane",
                    "Schindler's List",
                    "Pulp Fiction",
                    "Titanic",
                    "Goodfellas"],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieTile extends StatelessWidget {
  final String title;
  final String description;
  final List<String> names;

  const MovieTile(
      {required this.title, required this.description, required this.names, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.amberAccent,
                      ),
                      width: 5.0,
                      height: 20.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 13.0,
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: const Text(
                  "SEE ALL",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 13.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 15.0, color: Colors.grey),
            textAlign: TextAlign.end,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SmallInfo(info1: "Movie", info2: "TV Series"),
              SmallInfo(
                  info1: "Prime Video(Rent/Buy)", info2: "Other Providers"),
              SmallInfo(info1: "Drama", info2: "Adventure")
            ],
          ),
        ),
        MovieList(
          names: names,
        ),
      ],
    );
  }
}

class SmallInfo extends StatelessWidget {
  const SmallInfo({required this.info1, required this.info2, super.key});

  final String info1;
  final String info2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Row(
      children: [
        Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Text(
                info1,
                style: const TextStyle(color: Colors.grey),
              ),
              const VerticalDivider(
                color: Colors.grey,
                width: 21,
              ),
              Text(
                info2,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class Heading extends StatelessWidget {
  const Heading({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 500.0,
      height: 70.0,
      padding: const EdgeInsets.only(left: 10.0, top: 15.0, bottom: 20.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 27.0,
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class FeaturedToday extends StatelessWidget {
  const FeaturedToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          Inside(
            title: "The Best Movies and Series in January",
            image: "images/lostvshow.jpg",
          ),
          Inside(
            title: "The Best Movies and Series in January",
            image: "images/lostvshow.jpg",
          ),
          Inside(
            title: "The Best Movies and Series in January",
            image: "images/lostvshow.jpg",
          )
        ],
      ),
    );
  }
}

class Inside extends StatelessWidget {
  const Inside({required this.title, required this.image, super.key});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 15.0),
            child: Image(
              image: ResizeImage(AssetImage(image), width: 400, height: 220),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
