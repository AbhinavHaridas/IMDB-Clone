import "package:flutter/material.dart";

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white70,
          title: const Header(),
        ),
        body: const Body(),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return const Center(
        child: Image(
          image: ResizeImage(
              AssetImage("logos/imdb.png"),
              width: 75,
              height: 65
          ),
        ),
      );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Container(
         alignment: Alignment.centerLeft,
         margin: const EdgeInsets.only(top: 20),
         padding: const EdgeInsets.only(left: 15.0),
         child: const Text(
           "Sign in",
           style: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 27.0
           ),
         ),
       ),
       Container(
         alignment: Alignment.centerRight,
         margin: const EdgeInsets.only(top: 10.0),
         padding: const EdgeInsets.only(right: 15.0),
         child: const Text(
           "Forgot password?",
           style: TextStyle(
             color: Colors.blueAccent,
             fontSize: 15.0
           ),
         ),
       ),
       Column(
         children: [
           Container(
             padding: const EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
             child: const TextField(
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.grey,
                     width: 2
                   )
                 ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amberAccent,
                      width: 2
                    )
                  ),
                 hintText: 'Email',
                 hintStyle: TextStyle(
                   color: Colors.grey,
                 )
               ),
               style: TextStyle(color: Colors.black),
             ),
           ),
           Container(
             padding: const EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
             child: const TextField(
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.grey,
                       width: 2
                     )
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.amberAccent,
                     width: 2
                   )
                 ),
                 hintText: 'Enter the IMDb password',
                 hintStyle: TextStyle(
                   color: Colors.grey
                 ),
               ),
              style: TextStyle(color: Colors.black),
             ),
           )
         ],
       ),
       Center(
         // Sign In Button 
         child: Container(
            margin: const EdgeInsets.only(top: 30.0),
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.amber
            ),
            child: const Center(
              child: Text(
                "Sign In",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
       )
     ],
    );
  }
}
