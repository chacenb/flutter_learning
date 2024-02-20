import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  /* Adding images basics */
  /* @override
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
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: IconButton(
          // icon: Icon(Icons.alt_route_rounded,), // this is a material icon
          icon: const Icon(FontAwesomeIcons.anchor), // this is a fontawesome icon after installing the dependency
          color: Colors.red,
          iconSize: 60.0,
          onPressed: () {},
          // splashColor: Colors.green,
          highlightColor: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
