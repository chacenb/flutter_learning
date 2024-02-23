import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

/* Working with some logic inside the code  ---------------------
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

  /* ************************************************************************* */
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

  /* ************************************************************************* */
  /* Adding icons */
/*
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
          // iconSize: 30.0,
          onPressed: () {},
          // splashColor: Colors.green,
          highlightColor: Colors.lightBlueAccent,
        ),
      ),
    );
  }
*/

  /* ************************************************************************* */
  /* Working with container : Layout the canvas : OK */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // width: 400.0,
          height: 600.0,
          margin: const EdgeInsets.all(8.0),

          decoration: BoxDecoration(
            color: Colors.green[100],
            border: Border.all(color: Colors.black, width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          ),
          // alignment: Alignment.center,
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              for (int i = 0; i < 6; i += 1) // loop to render multiple widgets
                Container(
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(10.0),
                    width: 200.0,
                    height: 150.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("images/chacecomlogo.png"),
                        // fit: BoxFit.fill
                      ),
                      border: Border.symmetric(
                          vertical: BorderSide(color: Colors.grey, width: 3.0),
                          horizontal:
                              BorderSide(color: Colors.grey, width: 3.0)),
                      // borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                      shape: BoxShape.circle,
                      // doesn't work along w/ borderRadius
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blueGrey,
                            offset: Offset(2.0, 3.0),
                            blurRadius: 13.0,
                            spreadRadius: 1.0,
                            blurStyle: BlurStyle.normal)
                      ],
                      // backgroundBlendMode: BlendMode.hardLight,
                    ),
                    child: Text(
                      'Cont ${getNumber()}',
                      style: const TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.bold),
                    )),
              Text('GPS position is ${getGPSpositions()}',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 23.0),)
            ],
          )),
    );
  }

  getNumber() => Random().nextInt(100);

  getGPSpositions() => Random().nextInt(100);
}
