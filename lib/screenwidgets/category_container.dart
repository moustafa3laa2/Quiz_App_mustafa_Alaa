import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/screens/quiz_question.dart';
import 'package:quizz_app_mustafa_alaa/screens/quiz_screen.dart';

List quizText = ["Sport Test", "History Test", "General Test"];
List quizColor = [Colors.blue, Colors.red, Colors.yellow];

class CategoryContainer extends StatelessWidget {
  final int index;
  const CategoryContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const Quiz(),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: quizColor[index],
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Center(
            child: Text(
              quizText[index],
              style: const TextStyle(fontSize: 35),
            ),
          ),
        ),
      ),
    );
  }
}
