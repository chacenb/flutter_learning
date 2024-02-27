import 'package:flutter/material.dart';

class ChaceLogoNumbered extends StatelessWidget {
  int randomInt;

  ChaceLogoNumbered({super.key, required this.randomInt});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(6.0),
        margin: const EdgeInsets.all(6.0),
        width: 80.0,
        height: 80.0,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/chacecomlogo.png")),
          border: Border.symmetric(
              vertical: BorderSide(color: Colors.grey, width: 3.0),
              horizontal: BorderSide(color: Colors.grey, width: 3.0)),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.blueGrey,
                offset: Offset(2.0, 3.0),
                blurRadius: 13.0,
                spreadRadius: 1.0,
                blurStyle: BlurStyle.normal)
          ],
        ),
        child: Text('Cont $randomInt',
            style:
                const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold)));
  }
}
