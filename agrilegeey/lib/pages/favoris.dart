import 'package:flutter/material.dart';

class Favoris extends StatelessWidget {
  const Favoris({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Container(
           padding: EdgeInsets.all(20),
           child: Text("A propos",style: TextStyle(fontSize: 24,fontFamily: 'Poppins'),),
         )
        ],
      ),
    );
  }
}
