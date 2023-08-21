

import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/screenwidgets/category_container.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: showExitDialog,
        child: Column(children: [
          for (int i = 0; i < quizText.length; i++) CategoryContainer(index: i),
        ]),
      ),
    );
  }

  Future<bool> showExitDialog() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Exit App"),
        content: const Text("Do You Want Stay Or Exit The App ?"),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("Stay")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text("Exit")),
        ],
      ),
    );
  }
}
