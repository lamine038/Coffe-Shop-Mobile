import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            RowSection,
            lamine
          ],
        ),
      ),
    );
  }
}

Widget RowSection = Container(
  color: Colors.black,
  height: 600,
  padding: EdgeInsets.all(30),
  width: double.infinity,
  child: Row(
    children: [
      Column(
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            child: Image.asset('assets/images/3.png'),
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.orange,
            child: Icon(Icons.ac_unit),
          )
        ],
      ),
      Spacer(),
      Column(
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.grey,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.white,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.brown,
          )
        ],
      )

    ],
  ),
);

Widget lamine = Container(
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
    color: Colors.red,
  ),
  height: 100,
  padding: EdgeInsets.all(30),
  margin: EdgeInsets.all(20),
  width: double.infinity,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Bienvenue sur la page notification",style: TextStyle(color: Colors.white),)
    ],
  ),
);