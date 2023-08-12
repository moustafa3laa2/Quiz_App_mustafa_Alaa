import 'package:flutter/material.dart';

List quizText = ["Sport Test", "History Test", "General Test"];
List quizColor = [Colors.blue, Colors.red, Colors.yellow];

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        for (int i = 0; i < 3; i++)
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: quizColor[i],
                border: Border.all(width: 1 , color: Colors.black),
              ),
              child: Center(
                  child: Text(
                quizText[i],
              )),
            ),
          ),
      ]),
    );
  }
}
