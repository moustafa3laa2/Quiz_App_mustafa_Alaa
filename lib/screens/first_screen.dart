import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wall.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
            Image.asset(
              "assets/images/quizTime.png",
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            const Text(
              "ITI Quiz App",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "pacifico",
                  color: Color(0xffFBE042)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              "We Are Creative , Enjou Our App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "DancingScript",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.24,
            ),
            Container(
              //height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.9,
              
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Start",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
