import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/Global/quiz_data.dart';
import 'package:quizz_app_mustafa_alaa/screens/login_screen.dart';
import 'package:quizz_app_mustafa_alaa/screens/quiz_screen.dart';

List quizText = ["Sport Test", "History Test", "General Test" , "IQ Test" , "Geography Test" ,"Math Test"];
List quizColor = [Colors.blue, Colors.red, Colors.yellow, Colors.green ,Colors.brown , Colors.grey];

class CategoryContainer extends StatelessWidget {
  final int index;
   CategoryContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>  Quiz(categoryMap: dataBase[index],),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
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
