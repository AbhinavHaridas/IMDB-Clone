import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white70,
       title: const Header()
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

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  // Current State Variables
  final _formKey = GlobalKey<FormState>();

  dynamic _email;
  dynamic _password;

  // get users collection
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Query<Object?> findUser() {
    // Create a query for email and password login
    return users.where('email', isEqualTo: _email).where('password', isEqualTo: _password);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget> [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 15.0),
            child: const Text(
              "Welcome back",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 27.0
              ),

            ),
          ),

          // EMAIL ADDRESS SECTION
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2
                    )
                ),
                labelText: "Your email address",
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
              ),
              onSaved: (value) {
                _email = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter your email ";
                }
                return null;
              },
              style: const TextStyle(color: Colors.black),
            ),
          ),

          // PASSWORD SECTION
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2
                    )
                ),
                labelText: "Enter password",
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
              ),
              onSaved: (value) {
                _password = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter a Password";
                }
                return null;
              },
              style: const TextStyle(color: Colors.black),
            ),
          ),

          // LOGIN BUTTON SECTION
          TextButton(
            onPressed:() {
              if (_formKey.currentState?.validate() != null) {
                _formKey.currentState?.save();
                print(_password);
                print(_email);
                // Retrieving the userQuery
                Query userQuery = findUser();
                userQuery.get().then((response) {
                  if (response.docs.isNotEmpty) {
                    // If the response is not empty it goes to home page
                    setState(() {
                      Navigator.pushNamed(context, '/home');
                    });
                  }});
              }
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.amberAccent
                )
            ),
            child: const Text("Login",
                style: TextStyle(
                    color: Colors.black
                )
            ),
          )
        ],
      )
    );
  }
}


