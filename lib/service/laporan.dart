import 'package:flutter/material.dart';

class Laporan extends StatefulWidget {
  @override
  _LaporanState createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  TextEditingController jobTimeTotal = TextEditingController();
  TextEditingController fullTankTop = TextEditingController();
  TextEditingController hasilProduct = TextEditingController();
  TextEditingController stopMesin = TextEditingController();
  TextEditingController samplingGulungan = TextEditingController();
  TextEditingController changeMatrial = TextEditingController();
  TextEditingController ngSambunganWinding = TextEditingController();
  TextEditingController ngItemWinding = TextEditingController();

  String rasioEffesiensi = "";
  String rasioNg = "";
  String timeEffesiensi = "";
  String plantTotalProduct = "";
  String totalProduct = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hitung Laporan Harian Winding',
              style: TextStyle(
                fontFamily: "Combo",
              )),
          backgroundColor: Colors.black54,
        ),
        body: ListView(
          children: <Widget>[
            Material(
                color: Colors.black54,
                elevation: 10.0,
                child: Container(
                  margin: EdgeInsets.only(bottom: 10.0),
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
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50.0))),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: jobTimeTotal,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.black54),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText: "Masukan Jumlah Waktu Kerja",
                                        focusColor: Colors.white,
                                        labelText: "Total Waktu Produksi"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: hasilProduct,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText: "Masukan Hasil Produksi",
                                        focusColor: Colors.white,
                                        labelText: "Jumlah Produksi Barang"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: fullTankTop,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText: "Masukan Full Tank Stop",
                                        focusColor: Colors.white,
                                        labelText: "Full Tank Stop"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: samplingGulungan,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText: "Masukan Sampling Gulungan",
                                        focusColor: Colors.white,
                                        labelText: "Sampling Gulungan Winding"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: changeMatrial,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText:
                                            "Masukan Lama Pergantian Material",
                                        focusColor: Colors.white,
                                        labelText: "Lama Pergantian Material"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: stopMesin,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText: "Masukan Total Stop Mesin",
                                        focusColor: Colors.white,
                                        labelText: "STOP MESIN"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: ngItemWinding,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText: "Masukan Item NG Winding",
                                        focusColor: Colors.white,
                                        labelText: "Item NG Winding"),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: ngSambunganWinding,
                                    decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        hintText:
                                            "Masukan Ng Sambungan Winding",
                                        focusColor: Colors.white,
                                        labelText: "NG Sambungan Winding"),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  child: RaisedButton(
                                    color: Colors.black45,
                                    onPressed: () {
                                      setState(() {
                                        timeEffesiensi =
                                            _calculateTimeEffesiensi();
                                        plantTotalProduct =
                                            _calculatePlantTotalProduct();
                                        totalProduct = _calculateTotalProduct();
                                        rasioEffesiensi =
                                            _calculateRasioEffesiensi();
                                        rasioNg = _calculateRasioNg();
                                      });
                                    },
                                    child: Text(
                                      "Hitung",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'Combo',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black54,
                        margin: EdgeInsets.only(top: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0))),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Waktu Effesiensi",
                                      style: TextStyle(fontSize: 22.0),
                                    ),
                                    Text(
                                      timeEffesiensi,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Jumlah Product Rencana",
                                      style: TextStyle(fontSize: 22.0),
                                    ),
                                    Text(
                                      plantTotalProduct,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Jumlah Product ",
                                      style: TextStyle(fontSize: 22.0),
                                    ),
                                    Text(
                                      totalProduct,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Rasio Effesiensi ",
                                      style: TextStyle(fontSize: 22.0),
                                    ),
                                    Text(
                                      rasioEffesiensi,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      " Rasio NG",
                                      style: TextStyle(fontSize: 22.0),
                                    ),
                                    Text(
                                      rasioNg,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }

  String _calculateTimeEffesiensi() {
    double _jobTimeTotal = double.parse(jobTimeTotal.text);
    double _changeMaterial = double.parse(changeMatrial.text);
    double _stopMesin = double.parse(stopMesin.text);
    double _fullTankStop = double.parse(fullTankTop.text);
    double _proses =
        _jobTimeTotal - _changeMaterial - _stopMesin - _fullTankStop;

    String _hasilTimeEffesiensi = _proses.toStringAsFixed(2);
    return _hasilTimeEffesiensi;
  }

  String _calculatePlantTotalProduct() {
    double _jobTimeTotal = double.parse(jobTimeTotal.text);
    double _changeMaterial = double.parse(changeMatrial.text);
    double _stopMesin = double.parse(stopMesin.text);
    double _fullTankStop = double.parse(fullTankTop.text);
    double _proses =
        _jobTimeTotal - _changeMaterial - _stopMesin - _fullTankStop;
    double _akhir2 = _proses * 13;

    String _hasilPlantTotalProduct = _akhir2.toStringAsFixed(2);
    return _hasilPlantTotalProduct;
  }

  String _calculateTotalProduct() {
    double _jumlahProduksi = double.parse(hasilProduct.text);
    double _ngSambungan = double.parse(ngSambunganWinding.text);
    double _ngItemWinding = double.parse(ngItemWinding.text);
    double _samplingGulungan = double.parse(samplingGulungan.text);
    double _proses =
        _jumlahProduksi + _ngSambungan + _ngItemWinding + _samplingGulungan;

    String _hasilCalculateTotalProduct = _proses.toStringAsFixed(2);
    return _hasilCalculateTotalProduct;
  }

  String _calculateRasioEffesiensi() {
    double _jumlahProduksi = double.parse(hasilProduct.text);
    double _ngSambungan = double.parse(ngSambunganWinding.text);
    double _ngItemWinding = double.parse(ngItemWinding.text);
    double _samplingGulungan = double.parse(samplingGulungan.text);
    double _proses =
        _jumlahProduksi + _ngSambungan + _ngItemWinding + _samplingGulungan;

    double _jobTimeTotal = double.parse(jobTimeTotal.text);
    double _changeMaterial = double.parse(changeMatrial.text);
    double _stopMesin = double.parse(stopMesin.text);
    double _fullTankStop = double.parse(fullTankTop.text);
    double _proses2 =
        _jobTimeTotal - _changeMaterial - _stopMesin - _fullTankStop;
    double _akhir2 = _proses2 * 13;

    double _hasilAkhir = _proses / _akhir2;
    double _hasilAkhir3 = _hasilAkhir * 100;
    String _hasilRasioEffesiensi = _hasilAkhir3.toStringAsFixed(2) + " %";
    return _hasilRasioEffesiensi;
  }

  String _calculateRasioNg() {
    double _jumlahProduksi = double.parse(hasilProduct.text);
    double _ngSambungan = double.parse(ngSambunganWinding.text);
    double _ngItemWinding = double.parse(ngItemWinding.text);
    double _samplingGulungan = double.parse(samplingGulungan.text);
    double _proses =
        _jumlahProduksi + _ngSambungan + _ngItemWinding + _samplingGulungan;

    double proser2 = _ngItemWinding / _proses;
    double proses3 = proser2 * 1000000;

    String _hasilCalculateRasioNg = proses3.toStringAsFixed(2);
    return _hasilCalculateRasioNg;
  }
}
