import 'package:flutter/material.dart';
import 'package:test_ui/Pages/mainpage.dart';

class logInPage extends StatefulWidget {
  const logInPage({Key? key}) : super(key: key);

  @override
  State<logInPage> createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  late var screenSize = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                width: screenSize.width,
                height: screenSize.height / 1.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(('assets/Images/asset2.png')),
                      fit: BoxFit.fill),
                ),
                child: null),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenSize.height / 20,
                  ),
                  Image.asset(
                    'assets/Images/asset3.png',
                    height: screenSize.width / 4.2,
                  ),
                  const Text(
                    ' Great Ideas,\n Powerful\n Opportunities',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 31,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenSize.height / 9),
                  SizedBox(
                    height: screenSize.height / 3.5,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                width: screenSize.width / 1.4,
                                height: screenSize.height / 12,
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      width: 1.5, color: Colors.white),
                                ),
                                child: const Center(
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: 'Username / Email',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: screenSize.width / 1.4,
                                height: screenSize.height / 12,
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      width: 1.5, color: Colors.white),
                                ),
                                child: const Center(
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 89, 255, 95))),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Sign Up',
                                    style: TextStyle(color: Colors.white))),
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mainPage()));
                    },
                    child: Container(
                        width: screenSize.width / 1.4,
                        height: screenSize.height / 12,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              width: 1.5, color: const Color(0xFFb986ef)),
                        ),
                        child: const Center(
                            child: Text(
                          'Log In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 89, 255, 95),
                              fontSize: 25),
                          textAlign: TextAlign.center,
                        ))),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.height / 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Icons/facebook.png',
                          color: Color.fromARGB(255, 166, 83, 255),
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Image.asset(
                            'assets/Icons/twitter.png',
                            height: 20,
                          ),
                        ),
                        Image.asset(
                          'assets/Icons/instagram.png',
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
