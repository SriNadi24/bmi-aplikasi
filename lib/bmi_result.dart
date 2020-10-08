import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.tinggi, @required this.berat, this.nama,
        this.jenis, this.tanggal, this.bulan, this.tahun});
  final int tinggi;
  final int berat;
  final String nama;
  final String jenis;
  final String tanggal;
  final String bulan;
  final String tahun;

  @override
  Widget build(BuildContext context) {
    double bmi = berat / pow(tinggi / 100, 2);
    String cBMI;
    DateTime tahunnow = DateTime.now();
    int umur = tahunnow.year - int.parse(tahun);
    if (tahunnow.month > int.parse(bulan)) {
      ++umur;
    } else if (tahunnow.month == int.parse(bulan)) {
      if (tahunnow.day > int.parse(tanggal)) {
        ++umur;
      }
    }
    String usia = "$umur";
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('TERIMAKASIH'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/bmip.jpg',
                height: 200.0,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              nama,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              "Umur : " + usia,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              jenis,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.purple,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
