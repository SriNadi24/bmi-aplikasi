import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

class Profil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Profile'),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black,),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputBMI()));
              },
          ),
          centerTitle: true,
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              TextName(),
              TextWeb(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage('images/sri.jpg'),
      ),
      margin: const EdgeInsets.only(top: 30.0),
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'NI KADEK SRI NADI',
        style: TextStyle(
            color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    margin: const EdgeInsets.only(top:20.0),
    );
  }
}

class TextWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'https://medium.com@srin2422',
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 17,
        ),
      ),
    );
  }
}

class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color: Colors.purple,
                  blurRadius: 10,
                  offset: Offset(0,5),
                )
              ]
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 30),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home ,
                    size: 60,
                    color: Colors.black,
                  ),
                  Text(
                    'Karangasem',
                    style: TextStyle(color: Colors.purple, fontSize: 18),
                  )
                ], ), ), ), ),
        Container(
          decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color: Colors.purple,
                  blurRadius: 10,
                  offset: Offset(0,5),
                )
              ]
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 30),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 60,
                    color: Colors.black,
                  ),
                  Text(
                    'Mahasiswa',
                    style: TextStyle(color: Colors.purple, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color: Colors.purple,
                  blurRadius: 10,
                  offset: Offset(0,5),
                )
              ]

          ),
          width: 150,
          margin: const EdgeInsets.only(top: 40),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.book,
                    size: 60,
                    color: Colors.black,
                  ),
                  Text(
                    'Novel',
                    style: TextStyle(color: Colors.purple, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color: Colors.purple,
                  blurRadius: 10,
                  offset: Offset(0,5),
                )
              ]
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 40),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_note,
                    size: 60,
                    color: Colors.black,
                  ),
                  Text(
                    'All Genre',
                    style: TextStyle(color: Colors.purple, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}