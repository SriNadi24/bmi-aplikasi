import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'profil.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  String nama = '';
  String dropdownValue;
  String tanggal;
  String bulan;
  String tahun;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: Icon(Icons.dashboard),
        title: Text('MENGHITUNG BMI'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.perm_identity),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profil()));
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/bmip.jpg',
                height: 200.0,
                fit: BoxFit.fitWidth,
              ),
            ),

            Container(
              height: 60,
              color: Colors.indigo[200],
              child: Center(child: Text("Silakan Inputkan Data Anda",
                style: TextStyle (color: Colors.white, fontWeight: FontWeight.bold),)
              ),
            ),

            Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    new ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.deepPurple,
                      ),
                      title: TextField(
                        onChanged: (txt) {
                          setState(() {
                            nama = txt;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Nama',
                        ),
                      ),
                    ),
                  ],
                )),

            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    new ListTile(
                      leading: const Icon(
                        Icons.wc,
                        color: Colors.deepPurple,
                      ),
                      title: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        hint: new Text(' Jenis-Kelamin'),
                        underline: Container(height: 1, color: Colors.black),
                        items: <String>['Laki-laki', 'Perempuan']
                            .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                )),

            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tanggal = txt;
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'tanggal',
                          icon: Icon(Icons.date_range, color: Colors.deepPurple),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            bulan = txt;
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Bulan',
                          icon: Icon(Icons.date_range, color: Colors.deepPurple),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tahun = txt;
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Tahun',
                          icon: Icon(Icons.date_range, color: Colors.deepPurple),
                        ),
                      ),
                    ),
                  ],
                )),

            Container(
                padding: EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          suffix: Text('cm'),
                          filled: true,
                          hintText: 'Tinggi',
                          icon: Icon(Icons.accessibility, color: Colors.deepPurple),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          suffix: Text('kg'),
                          filled: true,
                          hintText: 'Berat',
                          icon: Icon(Icons.accessibility, color: Colors.deepPurple),
                        ),
                      ),
                    ),
                  ],
                )),

            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 100, right: 100, bottom: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            tinggi: tinggi,
                            berat: berat,
                            nama: nama,
                            jenis: dropdownValue,
                            tanggal: tanggal,
                            bulan: bulan,
                            tahun: tahun)),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.deepPurple[100],
                textColor: Colors.white,
                child: Text(
                  'HITUNG BMI',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

