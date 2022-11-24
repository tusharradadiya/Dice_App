import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  List pic = [
    "https://cdn-icons-png.flaticon.com/512/0/751.png",
    "https://cdn-icons-png.flaticon.com/128/0/2.png",
    "https://cdn-icons-png.flaticon.com/128/0/255.png",
    "https://cdn-icons-png.flaticon.com/512/0/963.png",
    "https://cdn-icons-png.flaticon.com/128/565/565745.png",
    "https://cdn-icons-png.flaticon.com/128/0/165.png"
  ];
  int i = 0;
  int j = 0;
  int sum = 0;
  int a = 0;

  int b = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Total : $sum",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "${pic[i]}",
                height: 125,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                "${pic[j]}",
                height: 125,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              var random = Random();
              setState(() {
                i = random.nextInt(6);
                j = random.nextInt(6);
                if (i == 0) {
                  a = 1;
                }
                if (j == 0) {
                  b = 1;
                }
                if (i == 1) {
                  a = 2;
                }
                if (j == 1) {
                  b = 2;
                }
                if (i == 2) {
                  a = 3;
                }
                if (j == 2) {
                  b = 3;
                }
                if (i == 3) {
                  a = 4;
                }
                if (j == 3) {
                  b = 4;
                }
                if (i == 4) {
                  a = 5;
                }
                if (j == 4) {
                  b = 5;
                }
                if (i == 5) {
                  a = 6;
                }
                if (j == 5) {
                  b = 6;
                }
                sum = a + b;
              });
            },
            child: Text(
              "GetNo",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}