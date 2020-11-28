import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackionaire/appointments.dart';
import 'package:hexcolor/hexcolor.dart';

final timeController = TextEditingController();
final topicController = TextEditingController();
final firestoreInstance = FirebaseFirestore.instance;

enum SingingCharacter { dad, mom, brother, sister, grandpa, grandma }

class Fam extends StatefulWidget {
  @override
  _FamState createState() => _FamState();
}

class _FamState extends State<Fam> {
  SingingCharacter _character = SingingCharacter.dad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#C8FD87'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/game.png'))),
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
                    style:
                        TextStyle(fontFamily: 'Roboto Regular', fontSize: 40),
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
                Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Dad',
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      ),
                      leading: Radio(
                        value: SingingCharacter.dad,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Mom',
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      ),
                      leading: Radio(
                        value: SingingCharacter.mom,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Brother',
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      ),
                      leading: Radio(
                        value: SingingCharacter.brother,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Sister',
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      ),
                      leading: Radio(
                        value: SingingCharacter.sister,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Grandpa',
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      ),
                      leading: Radio(
                        value: SingingCharacter.grandpa,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Grandma',
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      ),
                      leading: Radio(
                        value: SingingCharacter.grandma,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Center(
                  child: Container(
                    width: 100,
                    child: RaisedButton(
                      color: HexColor('#31B99D'),
                      child: Text(
                        "Done",
                        style: TextStyle(fontFamily: 'Roboto Medium'),
                      ),
                      onPressed: () {
                        newRecord();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Appointments();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void newRecord() async {
  var firebaseUser = await FirebaseAuth.instance.currentUser;
  firestoreInstance.collection("appointments").doc('new').update({
    "time": timeController.text,
    "topic": topicController.text,
    "name": "MOM",
  }).then((_) {
    print("success!");
  });
}
