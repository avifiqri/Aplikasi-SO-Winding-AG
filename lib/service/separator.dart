import 'package:flutter/material.dart';

class Separator extends StatefulWidget {
  @override
  _Separator createState() => _Separator();
}

class _Separator extends State<Separator> {
  TextEditingController input = TextEditingController();

  String hasil = "";
  String nilaiN = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Hitung So Separator"),
      ),
      body: ListView(
        children: <Widget> [

               Container(
        height: MediaQuery.of(context).size.height,

          color: Colors.black45,
          child: Column(
            children: <Widget>[
              Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
                      child: Center(
                        child: Image.asset(
                          'assets/logo.jpg',
                          width: 100.0,
                        ),
                      ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50.0))),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: input,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "Masukan Diameter Luar Separator",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                labelText: "Diameter Luar Separator"),
                          ),
                        ),
                      ),
                      RaisedButton(
                          color: Colors.black45,
                          onPressed: () {
                            setState(() {
                              nilaiN = _calculateN();
                              hasil = _calculateSepator();
                            });
                          },
                          child: Text(
                            "Hitung",
                            style: TextStyle(
                                fontFamily: "Combo", color: Colors.white),
                          )),

                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black54,
                        margin: EdgeInsets.only(top: 10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      " Nilain n",
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    Text(
                                      nilaiN,
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      " Panjang Gulungan(P)",
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    Text(
                                      hasil,
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Text(hasil)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
              ]

      ),
    );
  }

  String _calculateSepator() {
    double _input = double.parse(input.text);
    double _n = _input - 88;
    double _n2 = _n / 0.05;

    double _cariP = (_n2 - 1) * 0.025;
    double _cariP2 = (_cariP + 88) * _n2 * 3.14;
    double _cariP3 = _cariP2 / 1000;
    String _hasilCariP = _cariP3.toStringAsFixed(2) + " M";
    return _hasilCariP;
  }

  String _calculateN() {
    double _input = double.parse(input.text);
    double _n = _input - 88;
    double _n2 = _n / 0.05;

    String _hasilN = _n2.toStringAsFixed(2);
    return _hasilN;
  }
}
