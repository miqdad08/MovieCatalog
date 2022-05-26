import 'package:flutter/material.dart';
import 'package:movie_catalog/home_screen.dart';
import 'package:movie_catalog/widget/main_screen.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController textFieldController = TextEditingController();
  final _text = TextEditingController();

  String errorMessage = '';

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f5ec),
      resizeToAvoidBottomInset: false,
      //0xff60d7fd
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 415,
                  height: 500,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Color(0xfff6f5ec),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      controller: textFieldController,
                      decoration: const InputDecoration(
                        hintText: "Nama",
                      ),
                    ),
                    const SizedBox(height: 30),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Text(errorMessage,
                            style: const TextStyle(fontSize: 13, color: Colors.red))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Masuk",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                _validateInput();
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void _nextToSecondScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }

  void _validateInput() {
    if (textFieldController.text.isEmpty) {
      setState(() {
        errorMessage = 'Please enter some text';
      });
    } else {
      _nextToSecondScreen();
    }
  }
}
