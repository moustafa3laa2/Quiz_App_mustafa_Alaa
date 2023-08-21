import 'package:flutter/material.dart';
import 'package:quizz_app_mustafa_alaa/screens/category_screen.dart';
import 'package:quizz_app_mustafa_alaa/Global/quiz_data.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff2c752E),
              child: Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 219, 216, 216),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),

                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "*Please Enter Your Email";
                        }
                        final regexp  = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if(!regexp.hasMatch(value)) {
                          return "*Invaled Email 'example@gmail.com'";
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: "flutter@gmail.com",
                        suffixIcon: const Icon(Icons.visibility_off),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextFormField(
                      controller: usernameControler,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "*Please Enter Your Username";
                        }
                        if (value.length < 8) {
                          return "*Characters must be at least 8";
                        }
                        final regex = RegExp(r'^[A-Z][a-z0-9_-]{7,}$');
                        if (!regex.hasMatch(value)) {
                          return "*First character must be capital";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: const Icon(Icons.person),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "*Please Enter Your Password";
                        }if(value.length < 9){
                          return "*Password Must be at Least 9 characters";
                        }
                        final regexp  = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if(!regexp.hasMatch(value)) {
                          return "*Password Must Contain 'upper case' , 'lower case' , 'Special character' , 'digit'";
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: "Password",
                        suffixIcon: const Icon(Icons.visibility_off),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),


                   


                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("New To Quiz App?"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Color(0xff2c752E),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CategoryScreen(),
                          ),
                        );
                        }
                      },
                      child: Text(
                        "Login",
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff2c752E),
                          elevation: 15,
                          minimumSize: const Size(130, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Icon(
                      Icons.fingerprint,
                      size: 60,
                      color: Colors.blue,
                    ),
                    const Text(
                      "Use Touch ID",
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (mustafa) {}),
                            const Text("Remember Me"),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Color(0xff2c752E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
