import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
List<String> imageList = [
  "assets/images/dice1.png",
  "assets/images/dice2.png",
  "assets/images/dice3.png",
  "assets/images/dice4.png",
  "assets/images/dice5.png",
  "assets/images/dice6.png",
];


Random random = Random();
int randomIndexDice1 = 0;
int randomIndexDice2 = 0;


class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  

  Widget get _buildBody {
    return Stack(
      children: [
        //Background
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/newbackground.png",
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Image.asset("assets/images/diceeLogo.png"),
        ),

        Positioned(
            bottom: 300,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //dice1
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageList[randomIndexDice1]),
                        fit: BoxFit.cover,
                      )),
                ),

                //dice2
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageList[randomIndexDice2]),
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            )),

        //Button Roll
        Positioned(
            bottom: 120,
            left: 125,
            right: 125,
            child: InkWell(
                onTap: () {
                  setState(() {
                    randomIndexDice1 = random.nextInt(imageList.length);
                    randomIndexDice2 = random.nextInt(imageList.length);


                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:const Color(0xFFa01c1c),
                  ),
                  width: 100,
                  height: 50,
                  child:const Text(
                    "ROLL",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                )))
      ],
    );
  }
}
