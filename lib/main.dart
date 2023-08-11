import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/screens/login_screen.dart';

void main(){
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home:  LoginScreen()
    );
  }
}