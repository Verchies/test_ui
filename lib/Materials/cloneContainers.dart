import 'package:flutter/material.dart';

class cloneContainers extends StatelessWidget {
  const cloneContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 15),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage(
              'assets/Images/asset1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
