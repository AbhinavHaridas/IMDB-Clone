import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  Suggestions(
                    title: "From your Watchlist",
                    description: "Shows and movies available to watch from your watch list",
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white10,
              margin: const EdgeInsets.only(
                  top: 15.0
              ),
              padding: const EdgeInsets.only(
                  bottom: 30.0
              ),
              child: const Suggestions(
                  title: "Top picks for you",
                  description: "TV shows and movies just for you"
              ),
            ),
            Container(
              color: Colors.white10,
              margin: const EdgeInsets.only(
                  top: 10.0
              ),
              padding: const EdgeInsets.only(
                  bottom: 30.0
              ),
              child: const Suggestions(
                  title: "Fan favourites",
                  description: "This week's top TV shows and movies"
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}

class Suggestions extends StatelessWidget {
  const Suggestions({
    required this.title,
    required this.description,
    super.key
  });

  final String title;
  final String description;

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
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
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
              top: 13.0
          ),
          child: Text(
            description,
            style: const TextStyle(
                fontSize: 15.0,
                color: Colors.grey
            ),
            textAlign: TextAlign.end,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SmallInfo(
                  info1: "Movie",
                  info2: "TV Series"
              ),
              SmallInfo(
                  info1: "Prime Video(Rent/Buy)",
                  info2:  "Other Providers"
              ),
              SmallInfo(
                  info1: "Drama",
                  info2: "Adventure"
              )
            ],
          ),
        ),
        const MovieList(),
      ],
    );
  }
}

class MovieItem extends StatelessWidget {
  const MovieItem({
    required this.name,
    required this.link,
    required this.rating,
    required this.year,
    required this.age,
    required this.time,
    super.key
  });

  final String name;
  final String link;
  final String rating;
  final String year;
  final String age;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
            left: 12.0
        ),
        child: Column(
          children: [
            Image(
                image: ResizeImage(
                  AssetImage(link),
                  width: 100,
                  height: 150,
                )
            ),
            SizedBox(
                width: 200,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Text(
                        rating,
                        style: const TextStyle(
                            fontSize: 15.0
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 15.0
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(year, style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey
                          ),),
                          Text(age, style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey
                          ),),
                          Text(time, style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                      child: const Text(
                        "Watch options",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        ),
                      ),
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          MovieItem(
              name: "Catch Me If You Can",
              link: "movieList/catch_me.jpg",
              rating: "10.0",
              year: "2002",
              age: "PG-13",
              time: "2hrs"
          ),
          MovieItem(
              name: "God Father",
              link: "movieList/godfather.jpg",
              rating: "10.0",
              year: "1992",
              age: "R",
              time: "2.3hrs"
          ),
          MovieItem(
              name: "good fellas",
              link: "movieList/good fellas.jpg",
              rating: "9.0",
              year: "1999",
              age: "R",
              time: "2.5hrs"
          ),
          MovieItem(
              name: "The Social Network",
              link: "movieList/social_network.jpg",
              rating: "10.0",
              year: "2012",
              age: "R",
              time: "2hrs"
          ),
          MovieItem(
              name: "Catch Me If You Can",
              link: "movieList/all at once.jpg",
              rating: "9.0",
              year: "2022",
              age: "PG-13",
              time: "2hrs"
          )
        ],
      ),
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
                  border: Border.all(
                      color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(
                      20.0
                  )
              ),
              child: Row(
                children:  [
                  Text(info1),
                  const VerticalDivider(
                    color: Colors.grey,
                    width: 21,
                  ),
                  Text(info2)
                ],
              ),
            )
          ],
        )
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

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
     switch (currentIndex) {
      case 0:
        Navigator.pushNamed(context, "/home");
        break;
      case 1:
        Navigator.pushNamed(context, "/search");
        break;
      case 2:
        Navigator.pushNamed(context, "/video");
        break;
      case 3:
        Navigator.pushNamed(context, "/profile");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: (index) => onItemTapped(index),
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.white10,
          icon: Icon(
            Icons.home,
            semanticLabel: "home",
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            semanticLabel: "search",
          ),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.video_collection_rounded,
          ),
          label: "video",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_rounded,
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
              image: ResizeImage(
                  AssetImage(image),
                  width: 400,
                  height: 220
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 15.0
              ),
            ),
          ),
        ],
      ),
    );
  }
}