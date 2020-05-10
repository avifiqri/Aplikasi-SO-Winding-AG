import 'package:WindingAg/service/laporan.dart';
import 'package:WindingAg/service/lithiumCinaAGZ.dart';
import 'package:WindingAg/service/lithiumhonjo.dart';
import 'package:WindingAg/service/litiumcina.dart';
import 'package:WindingAg/service/separator.dart';
import 'package:WindingAg/service/tape2mm.dart';
import 'package:WindingAg/service/tape40mm.dart';
import 'package:WindingAg/service/tapeblue.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Aplikasi Winding AG",
              style: TextStyle(color: Colors.white, fontFamily: 'Combo')),
          actions: <Widget>[
            RaisedButton(
              color: Colors.black,
              onPressed: () {
                setState(() {
                  disClaimer(context);
                });
              },
              child: Icon(
                Icons.help_outline,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(45.0)),
                      gradient: LinearGradient(
                          colors: <Color>[Colors.black54, Colors.black87])),
                  height: 150.0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Hitung SO AG",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Combo',
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                          child: Image.asset(
                            'assets/logo.jpg',
                            width: 100.0,
                          ),
                        )
                      ],
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Laporan()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 120,
                      child: Card(
                        color: Colors.black38,
                        elevation: 20.0,
                        child: Center(
                          child: Text(
                            "Laporan Harian",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Combo",
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Separator()));
                    },
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 120,
                        child: Card(
                          color: Colors.black38,
                          elevation: 10.0,
                          child: Center(
                            child: Text(
                              "Separator",
                              style: TextStyle(
                                  fontFamily: "Combo",
                                  color: Colors.white,
                                  fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LithiumCina()));
                      },
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 120,
                          child: Card(
                            color: Colors.black38,
                            elevation: 10.0,
                            child: Center(
                              child: Text(
                                "Lithium China",
                                style: TextStyle(
                                    fontFamily: "Combo",
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LithiumHonjo()));
                      },
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 120,
                          child: Card(
                            color: Colors.black38,
                            elevation: 10.0,
                            child: Center(
                              child: Text(
                                "Lithium Honjo",
                                style: TextStyle(
                                    fontFamily: "Combo",
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LithiumCinaAGZ()));
                      },
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 120,
                          child: Card(
                            color: Colors.black38,
                            elevation: 10.0,
                            child: Center(
                              child: Text(
                                "Lithium Cina AGZ",
                                style: TextStyle(
                                    fontFamily: "Combo",
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tape2mm()));
                      },
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 120,
                          child: Card(
                            color: Colors.black38,
                            elevation: 10.0,
                            child: Center(
                              child: Text(
                                "Tape 2mm",
                                style: TextStyle(
                                    fontFamily: "Combo",
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Tape40mm()));
                      },
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 120,
                          child: Card(
                            color: Colors.black38,
                            elevation: 10.0,
                            child: Center(
                              child: Text(
                                "Tape 40mm",
                                style: TextStyle(
                                    fontFamily: "Combo",
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Tapeblue()));
                      },
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 120,
                          child: Card(
                            color: Colors.black38,
                            elevation: 10.0,
                            child: Center(
                              child: Text(
                                "Blue Tape 9mm",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Combo",
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  void disClaimer(BuildContext context) {
    var alert = AlertDialog(
      title: Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
                margin: EdgeInsets.only(top: 60.0),
                height: 50,
                color: Colors.black26,
                child: Center(child: Text('DISCLAIMER')))),
      ),
      content: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              '1. Aplikasi ini hanya baru dibuat untuk menghitung laporan di Winding AG ',
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Text(
              '2. Aplikasi ini hanya baru dibuat untuk menghitung SO naterial Winding AG ',
              textAlign: TextAlign.left,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5.0),
              child: Text(
                '3. Aplikasi ini dibuat untuk mempermudah dalam pekerjaan ',
                textAlign: TextAlign.left,
              )),
          Container(
              margin: EdgeInsets.only(top: 5.0),
              child: Text(
                '4. Aplikasi ini telah disetujui oleh Group Chip line AG ',
                textAlign: TextAlign.left,
              )),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Karya Anak Winding AG",
                style: TextStyle(fontFamily: 'Combo'),
              ),
            ),
          ),
          Center(
            child: Icon(
              Icons.phone_android,
              color: Colors.red,
            ),
          )
        ],
      ),
    );

    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
