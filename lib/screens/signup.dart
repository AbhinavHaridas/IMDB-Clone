import "package:flutter/material.dart";


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

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  var _user;
  var _password;
  var _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Header(),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: <Widget> [

              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text(
                  "Create account",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 27.0
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2
                          )
                      ),
                    labelText: "First and last name",
                    labelStyle: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                  onSaved: (value) {
                    _user = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a name";
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.black),
                ),
              ),

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
                    labelText: "Create a password",
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

              TextButton(
                  onPressed:() {
                      if (_formKey.currentState?.validate() != null) {
                        _formKey.currentState?.save();
                        print(_user);
                        print(_password);
                        print(_email);
                      }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)
                  ),
                  child: const Text("Create Your IMDb account",
                      style: TextStyle(
                          color: Colors.black
                      )
                  ),
              )
            ],
          )
          ),
    );
  }
}