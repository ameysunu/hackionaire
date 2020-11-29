import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackionaire/chatbot.dart';
import 'package:hackionaire/family.dart';
import 'package:hexcolor/hexcolor.dart';

Future<DocumentSnapshot> getUserInfo() async {
  return await FirebaseFirestore.instance.doc('appointments/new').get();
}

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
              FutureBuilder(
                  future: getUserInfo(),
                  builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                child: Card(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              snapshot.data.data()['time'],
                                              style: TextStyle(
                                                  fontFamily: 'Roboto Medium'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10.0, 0, 10, 10),
                                            child: Text(
                                              snapshot.data.data()['name'],
                                              style: TextStyle(
                                                  fontFamily: 'Roboto Medium',
                                                  fontSize: 20),
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
                                            snapshot.data.data()['topic'],
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
                            );
                          });
                    }
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: HexColor('#009CED'),
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Add();
                  },
                ),
              );
            },
            heroTag: null,
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: HexColor('#374B43'),
            child: Icon(Icons.chat),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Chat();
                  },
                ),
              );
            },
            heroTag: null,
          ),
        ],
      ),
    );
  }
}

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0DF0FF'),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#0DF0FF'),
        title: Text(
          "Make an appointment",
          style: TextStyle(fontFamily: 'Roboto Medium', color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "GROUPS +",
                  style: TextStyle(
                      fontFamily: 'Roboto Regular',
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 1,
                    color: HexColor('#FFE8F7'),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                      child: Container(
                        color: HexColor('#0DF0FF'),
                        child: Center(
                            child: Text(
                          "Family",
                          style: TextStyle(
                              fontFamily: 'Roboto Regular', fontSize: 20),
                        )),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Fam();
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  color: HexColor('#FFE8F7'),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                    child: Container(
                      color: HexColor('#0DF0FF'),
                      child: Center(
                          child: Text(
                        "Cousins",
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  color: HexColor('#FFE8F7'),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                    child: Container(
                      color: HexColor('#0DF0FF'),
                      child: Center(
                          child: Text(
                        "Study Group",
                        style: TextStyle(
                            fontFamily: 'Roboto Regular', fontSize: 20),
                      )),
                    ),
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
