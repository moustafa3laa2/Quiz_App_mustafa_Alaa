import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const QuizTime());
}

class QuizTime extends StatelessWidget {
  const QuizTime({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF00204A),
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 15,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/wall2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset(
                      "images/quizTime1.jpg",
                      width: 180,
                      height: 180,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "ITI Quiz App",
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: "Pacifico",
                        color: Color(0xFFFAE042)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "We Are Creative ,Enjoy Our App",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: "DancingScript"),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Start",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        fixedSize: const Size(350, 20)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
