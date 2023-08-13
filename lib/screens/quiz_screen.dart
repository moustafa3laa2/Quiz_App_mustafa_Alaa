import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/screens/score_screen.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7E57C2),
        title: const Text("Sport Test"),
        titleSpacing: MediaQuery.of(context).size.width * 0.18,
        leading: const Center(
          child: Text(
            "1 / 10",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [Image.asset("assets/images/sportsQuis.png")],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF6F1F8),
                border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 208, 166, 224),
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    "Question 1",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "What is the nickname for Arsenal FC?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ScoreScreen(),
                ),
              );
            },
            style: 
            ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7E57C2),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            child: const Text(
              "The Gunners",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ScoreScreen(),
                ),
              );
            },
            style: 
            ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7E57C2),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                
              ),
              minimumSize: Size(150, 40),
            ),
            child: const Text(
              "The Gunners",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ScoreScreen(),
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
               minimumSize: Size(150, 40),
            ),
            child: const Text(
              "Red devils",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ScoreScreen(),
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
               minimumSize: Size(150, 40),
            ),
            child: const Text(
              "Green Eagels",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
