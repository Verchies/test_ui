import 'package:flutter/material.dart';

class customCard extends StatelessWidget {
  customCard({Key? key, required this.width, required this.height})
      : super(key: key);

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 54, 255, 111),
                          borderRadius: BorderRadius.circular(10)),
                      width: width / 3,
                      height: height / 8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 5),
                    child: SizedBox(
                      width: width / 2.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Project name'),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 8.0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 209, 73, 255),
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 30,
                                  width: 30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Target: ',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 54, 255, 111),
                                        ),
                                      ),
                                      Text(
                                        'Pledget: ',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 54, 255, 111),
                                        ),
                                      ),
                                      Text(
                                        'Backers: ',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 54, 255, 111),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('\$5000'),
                                      Text('\$4,500'),
                                      Text('46'),
                                    ],
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 15.0,
                                ),
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.more_vert,
                                        color: Colors.grey)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
