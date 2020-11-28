import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Login",
          style: TextStyle(fontFamily: 'Roboto Regular', color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Image.asset("images/code.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Get Started ➜",
                  style: TextStyle(fontFamily: 'Roboto Regular', fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: HexColor('#9296F0'),
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            child: Image.asset("images/google.png"),
                          ),
                        ),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto Medium",
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    // signInWithGoogle().then((result) {
                    //   if (result != null) {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (context) {
                    //           return HomeWidget();
                    //         },
                    //       ),
                    //     );
                    //   }
                    // });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
