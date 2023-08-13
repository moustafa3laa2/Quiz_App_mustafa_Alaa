import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/screens/first_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
          Padding(
            padding: const EdgeInsets.only(right: 20 , left: 20),
            child: Text(
              "Hello , Mustafa Your Score Is 10 /10",
              style: TextStyle(
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
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const FirstScreen(),
                ),
              );
            },
            style: 
            ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7E57C2),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
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
