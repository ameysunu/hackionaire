import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final timeController = TextEditingController();
final topicController = TextEditingController();

class Fam extends StatefulWidget {
  @override
  _FamState createState() => _FamState();
}

class _FamState extends State<Fam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#C8FD87'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "FAMILY",
                  style: TextStyle(fontFamily: 'Roboto Regular', fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextFormField(
                  controller: timeController,
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Roboto Regular'),
                  decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto Regular',
                      color: Colors.black54,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto Regular', color: Colors.black),
                    hintText: 'Choose Time',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextFormField(
                  controller: topicController,
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Roboto Regular'),
                  decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto Regular',
                      color: Colors.black54,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto Regular', color: Colors.black),
                    hintText: 'Topic',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
