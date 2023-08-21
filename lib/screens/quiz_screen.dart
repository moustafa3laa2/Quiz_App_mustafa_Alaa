import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/Global/quiz_data.dart';
import 'package:quizz_app_mustafa_alaa/screens/score_screen.dart';

class Quiz extends StatefulWidget {
  final Map categoryMap;
  Quiz({super.key, required this.categoryMap});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int indx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.categoryMap["color"],
        title: Text(widget.categoryMap["categoryName"]),
        centerTitle: true,
        leading: Center(
          child: Text(
            "${(indx + 1)} / ${(widget.categoryMap["data"] as List).length}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.all(3),
            child: Image.asset(
              "assets/images/sportsQuis.png",
            ),
          )
        ],
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
                  color: const Color.fromARGB(255, 208, 166, 224),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Question ${indx + 1}",
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.categoryMap["data"][indx]["question"],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          for (int i = 0;
              i < (widget.categoryMap["data"][indx]['answers'] as List).length;
              i++)
            ElevatedButton(
              onPressed: () {
                totalScore += (widget.categoryMap["data"][indx]["answers"][i]
                    ["score"]) as int;
                if (indx + 1 < (widget.categoryMap["data"] as List).length) {
                  setState(() {
                    indx++;
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => ScoreScreen(
                        totalQuestion:
                            (widget.categoryMap["data"] as List).length,
                        totalScore: totalScore,
                      ),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoryMap["color"],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                widget.categoryMap["data"][indx]["answers"][i]["ans"],
                style: const TextStyle(fontSize: 20),
              ),
            ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
