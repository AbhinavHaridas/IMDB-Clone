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
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             children: [
               Container(
                 color: Colors.white10,
                 margin: const EdgeInsets.only(
                     top: 60.0
                 ),
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
                 padding: const EdgeInsets.only(
                     top: 30.0,
                     bottom: 30.0
                 ),
                 child: Column(
                   children: const [
                     Heading(title: "What to watch"),
                     Suggestions()
                   ],
                 ),
               )
             ],
           ),
          ),
          bottomNavigationBar: const BottomNavbar(),
          ),
          );
  }
}

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 12.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 10.0
                ),
                child: SizedBox(
                  width: 13.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.amberAccent,
                        ),
                       width: 5.0,
                        height: 20.0,
                      ),
                      const Text(
                          "From your Watchlist",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                      ),
                    ],
                  ),
                ),
              ),
             Container(
               padding: const EdgeInsets.only(
                 right: 10.0
               ),
               child: const Text(
                 "SEE ALL",
                 style: TextStyle(
                   fontSize: 15.0,
                   color: Colors.blue,
                   fontWeight: FontWeight.bold
                 ),
               ),
             )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 10.0
          ),
          child: const Text(
              "Shows and movies available to watch from your watch list",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey
              ),
          ),
        )
      ],
    );
  }
}

class Heading extends StatelessWidget {
  const Heading(
      {
        required this.title,
        super.key
      }
  );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 500.0,
      height: 70.0,
      padding: const EdgeInsets.only(
          left: 10.0,
          top: 15.0,
          bottom: 20.0
      ),
      child: Text(title,
        style: const TextStyle(
            fontSize: 27.0,
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.white10,
      icon: Icon(
          Icons.home,
          color: Colors.grey,
          semanticLabel: "home",
      ),
      label: "home",
      ),
      BottomNavigationBarItem(
      icon: Icon(
          Icons.search,
          color: Colors.grey,
          semanticLabel: "search",
      ),
      label: "search",
      ),
      BottomNavigationBarItem(
          icon: Icon(
              Icons.video_collection_rounded,
              color: Colors.grey
          ),
          label: "video",
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person_rounded,
            color: Colors.grey
          ),
          label: "profile",
      )
      ],
    );
  }
}

class FeaturedToday extends StatelessWidget {
  const FeaturedToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Row (
          children: const <Widget> [
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
  const Inside(
    {
      required this.title,
      required this.image,
      super.key
    }
  );

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
              image: AssetImage(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
