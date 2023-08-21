import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/screens/category_screen.dart';
import 'package:quizz_app_mustafa_alaa/screens/first_screen.dart';
import 'package:quizz_app_mustafa_alaa/screens/quiz_screen.dart';
import 'package:quizz_app_mustafa_alaa/Global/quiz_data.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalQuestion;

  ScoreScreen(
      {super.key, required this.totalScore, required this.totalQuestion});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
              "Hello , ${usernameControler.text} Your Score Is ${widget.totalScore} / ${widget.totalQuestion}",
              style: const TextStyle(
                  color: Color(0xff7E57C2),
                  fontSize: 40,
                  fontFamily: "DancingScript",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const FirstScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7E57C2),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              minimumSize: const Size(200, 50),
            ),
            child: const Text(
              "Play Again",
              style: TextStyle(fontSize: 20),
            ),
          ),
         
        ],
      ),
    );
  }
}
