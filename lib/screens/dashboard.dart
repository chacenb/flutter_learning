import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

/* OLD CODE STATE ---------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dashboard'.toUpperCase()),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: "welcome to",
            children: [
              // TextSpan(text: '--'),
              const TextSpan(
                text: 'CHACE',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(
                text: 'App',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30.0,
                    backgroundColor: Colors.amber),
              ),
              TextSpan(text: ': ${getNumber()}')
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("NEW"),
      ),
      // const Text("+"),
    );
  }


  getNumber() => Random().nextInt(100);
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Colors.cyan,
        ),
        body: const Image(
          image: AssetImage("images/chacecomlogo.png"),
          width: 200.0,
          // height: 800.0,
          opacity: AlwaysStoppedAnimation(0.6),
          repeat: ImageRepeat.repeat,
          // alignment: Alignment.bottomRight,
          // fit: BoxFit.contain,
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Text("NEW"),
        // ),
        // const Text("+"),
        );
  }
}
