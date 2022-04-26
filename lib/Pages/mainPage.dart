import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/Materials/customCards.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  late var screenSize = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenSize.height / 2.8,
                      width: screenSize.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/Images/asset1.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18.0, left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.arrow_back_rounded,
                              color: Colors.white, size: 31),
                          Icon(Icons.more_vert, color: Colors.white, size: 31),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenSize.width / 10,
                          top: screenSize.height / 7),
                      child: const Text(
                        'Transformation\nof new ideas',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: screenSize.height / 3.2),
                        child: Container(
                          width: screenSize.width / 1.4,
                          height: screenSize.height / 11,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/Images/asset1.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 1.5, color: const Color(0xFFb986ef)),
                            ),
                            child: Center(
                              child: TextField(
                                textInputAction: TextInputAction.search,
                                style: const TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset(
                                      'assets/Icons/search.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  hintText: 'Password',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenSize.width / 3, top: 25, bottom: 12),
                  child: const Text(
                    'Featured & recommended',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFd3edd9),
                      borderRadius: BorderRadius.circular(12)),
                  height: 500,
                  width: screenSize.width / 1.12,
                  child: ListView(
                    children: [
                      customCard(
                          width: screenSize.width, height: screenSize.height),
                      customCard(
                          width: screenSize.width, height: screenSize.height),
                      customCard(
                          width: screenSize.width, height: screenSize.height),
                    ],
                  ),
                )
              ],
            ),
          )),
          Positioned(
            bottom: 0,
            child: Container(
              height: screenSize.height / 10,
              width: screenSize.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.home, color: Color(0xFFb986ef), size: 31),
                  Icon(Icons.grid_view_rounded,
                      color: Color(0xFFb986ef), size: 31),
                  Icon(Icons.person, color: Color(0xFFb986ef), size: 31),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
