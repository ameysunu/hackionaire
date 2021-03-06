import 'package:flutter/material.dart';
import 'package:hackionaire/appointments.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: HexColor('#0DF0FF'),
        flexibleSpace:
            Image(image: AssetImage('images/appbar.png'), fit: BoxFit.cover),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: HexColor('#0DF0FF'),
                    radius: 200,
                    child: CircleAvatar(
                        radius: 185,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Have you met with\nyourself today?",
                              style: TextStyle(
                                  fontFamily: 'Roboto Regulars',
                                  fontSize: 30,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          color: HexColor('#FFE8F7'),
                          child: Text(
                            "Yes, I did it!",
                            style: TextStyle(fontFamily: 'Roboto Medium'),
                          ),
                          onPressed: () {
                            _yesDialog(context);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          color: HexColor('#FFE8F7'),
                          child: Text(
                            "No, not yet!",
                            style: TextStyle(fontFamily: 'Roboto Medium'),
                          ),
                          onPressed: () {
                            _noDialog(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  "You never lose a dream, it just incubates as a hobby.\n~ Larry Page (Co-founder Google Inc.)",
                  style: TextStyle(
                      fontFamily: 'Roboto Regular',
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _yesDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: HexColor('#FFE8F7'),
          title: Center(
            child: Text(
              "Way to go! Nice work 😇",
              style: TextStyle(fontFamily: 'Roboto Medium'),
            ),
          ),
          content: RaisedButton(
            color: HexColor('#A2B3D1'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Done",
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Roboto Medium'),
                ),
              ],
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Appointments();
                  },
                ),
              );
            },
          ),
        );
      });
}

void _noDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: HexColor('#FFE8F7'),
          title: Center(
            child: Text(
              "Woah! That's not good 😞",
              style: TextStyle(fontFamily: 'Roboto Medium'),
            ),
          ),
          content: RaisedButton(
            color: HexColor('#A2B3D1'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ok",
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Roboto Medium'),
                ),
              ],
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Appointments();
                  },
                ),
              );
            },
          ),
        );
      });
}
