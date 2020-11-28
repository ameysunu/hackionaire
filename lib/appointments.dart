import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final firestoreInstance = FirebaseFirestore.instance;

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#65FCC8'),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text("Appointments",
            style: TextStyle(fontFamily: 'Roboto Medium', color: Colors.black)),
      ),
      backgroundColor: HexColor('#65FCC8'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "10:00AM -12:00PM",
                                style: TextStyle(fontFamily: 'Roboto Medium'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 0, 10, 10),
                              child: Text(
                                "MOM",
                                style: TextStyle(
                                    fontFamily: 'Roboto Medium', fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor: HexColor('#D3B3FF'),
                            radius: 40,
                            child: Text(
                              "College",
                              style: TextStyle(
                                  fontFamily: 'Roboto Medium',
                                  color: HexColor('#4B4453')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "12:30PM -13:00PM",
                                style: TextStyle(fontFamily: 'Roboto Medium'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 0, 10, 10),
                              child: Text(
                                "BECKY",
                                style: TextStyle(
                                    fontFamily: 'Roboto Medium', fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor: HexColor('#D3B3FF'),
                            radius: 40,
                            child: Text(
                              "Netflix",
                              style: TextStyle(
                                  fontFamily: 'Roboto Medium',
                                  color: HexColor('#4B4453')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor('#00A0CF'),
        child: Icon(Icons.add),
        onPressed: () {
          null;
        },
      ),
    );
  }
}
