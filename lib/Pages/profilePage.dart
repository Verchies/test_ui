import 'package:flutter/material.dart';
import 'package:test_ui/Materials/cloneContainers.dart';
import 'package:test_ui/Materials/texts.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_rounded,
                    color: Color(0xFFb986ef), size: 31),
                Icon(Icons.more_vert, color: Color(0xFFb986ef), size: 31),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(
                        height: 120,
                        width: 120,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Color.fromARGB(255, 54, 255, 111)),
                          value: 0.79,
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 105,
                          width: 105,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFFceb9ea),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 12),
                  const Text('95%'),
                ],
              ),
              SizedBox(
                  height: 58,
                  width: 112,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Donate',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFf97a7a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 15),
              child: Text(
                'Project Name',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.radio_button_checked_rounded,
                      size: 30,
                      color: Color(0xFFb986ef),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Target',
                      style:
                          TextStyle(color: Color.fromARGB(255, 54, 255, 111)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('\$5000',
                        style: TextStyle(
                            color: Color(0xFFb986ef),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.attach_money_rounded,
                      size: 30,
                      color: Color(0xFFb986ef),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Pledget',
                      style:
                          TextStyle(color: Color.fromARGB(255, 54, 255, 111)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('\$4500',
                        style: TextStyle(
                            color: Color(0xFFb986ef),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.person,
                      size: 30,
                      color: Color(0xFFb986ef),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Backers',
                      style:
                          TextStyle(color: Color.fromARGB(255, 54, 255, 111)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('\$46',
                        style: TextStyle(
                            color: Color(0xFFb986ef),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Title',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${texts.loremIpsum}',
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15),
              child: const Text(
                'Gallery',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cloneContainers(),
                  cloneContainers(),
                  cloneContainers(),
                  cloneContainers(),
                  cloneContainers(),
                  cloneContainers(),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Story',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${texts.loremIpsum}',
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
