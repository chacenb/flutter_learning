import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';

import '../reusables/chacelogonumbered.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  double GPSposition = 0.0;

  getGPSpositions() => Random().nextDouble();

  resetGPSpositions() => GPSposition = 0.0;

  getNextNumber() => counter += 1;

  /* ************************************************************************************* */
  /* ADDING BUTTONS | TRANSFORMING BUTTONS INTO ICONS | get GPS dynamically  | Add APP BAR *********** */
  /* ************************************************************************************* */
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
  //       title: const Text('Get position'),
  //       actions: [
  //         IconButton(
  //             icon: const Icon(FontAwesomeIcons.locationDot,
  //                 size: 20.0, color: Colors.white),
  //             onPressed: () {
  //               setState(() => GPSposition = getGPSpositions());
  //             }),
  //         IconButton(
  //             icon: const Icon(FontAwesomeIcons.arrowsRotate,
  //                 size: 18.0, color: Colors.white),
  //             onPressed: () =>
  //                 setState(() => GPSposition = resetGPSpositions())),
  //       ],
  //       elevation: 10.0,
  //       shadowColor: Colors.blueGrey,
  //       surfaceTintColor: Colors.lightBlueAccent,
  //       // shape: ShapeBorder,
  //       backgroundColor: Colors.blueGrey,
  //       // foregroundColor: Colors.red,
  //       // IconThemeData? iconTheme,
  //       // IconThemeData? actionsIconTheme,
  //       // Clip? clipBehavior,
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           const ElevatedButton(
  //             onPressed: null, // this disables a button
  //             style: ButtonStyle(
  //               elevation: MaterialStatePropertyAll(5.0),
  //               padding: MaterialStatePropertyAll(EdgeInsets.all(10.0)),
  //             ),
  //             child: Text("GET POSITION",
  //                 style: TextStyle(fontSize: 18.0, color: Colors.black)),
  //           ),
  //           const Padding(padding: EdgeInsets.all(8.0)),
  //           ElevatedButton(
  //             onPressed: () {
  //               setState(() => GPSposition = getGPSpositions());
  //             },
  //             style: const ButtonStyle(
  //               shape: MaterialStatePropertyAll(CircleBorder()),
  //               elevation: MaterialStatePropertyAll(5.0),
  //               padding: MaterialStatePropertyAll(EdgeInsets.all(10.0)),
  //             ),
  //             child: Icon(FontAwesomeIcons.locationDot,
  //                 size: 50.0, color: Colors.red[600]),
  //           ),
  //           const Padding(padding: EdgeInsets.all(8.0)),
  //           ElevatedButton.icon(
  //             onPressed: () {
  //               setState(() => GPSposition = getGPSpositions());
  //             },
  //             style: const ButtonStyle(
  //                 elevation: MaterialStatePropertyAll(5.0),
  //                 padding: MaterialStatePropertyAll(EdgeInsets.all(10.0))),
  //             icon: Icon(FontAwesomeIcons.locationDot, color: Colors.red[600]),
  //             label: const Text("GET POSITION",
  //                 style: TextStyle(color: Colors.black)),
  //           ),
  //           const Padding(padding: EdgeInsets.all(8.0)),
  //           Text(
  //             "GPS position : $GPSposition",
  //             style: (const TextStyle(fontSize: 18.0)),
  //           ),
  //           const Padding(padding: EdgeInsets.all(50.0)),
  //
  //           // USE WHETHER "OutlinedButton.icon" or "ElevatedButton.icon" or TextButton.icon
  //           TextButton.icon(
  //             style: TextButton.styleFrom(
  //               foregroundColor: Colors.blue,
  //             ),
  //             onPressed: () {
  //               setState(() => GPSposition = resetGPSpositions());
  //             },
  //             icon: const Icon(FontAwesomeIcons.arrowsRotate, size: 12.0),
  //             label: const Text("Reset"),
  //             // child: Text('TextButton'),
  //           ),
  //           TextButton.icon(
  //             style: TextButton.styleFrom(
  //               foregroundColor: Colors.blue,
  //             ),
  //             onPressed: null, // this disables a button */
  //             icon: const Icon(FontAwesomeIcons.lock, size: 12.0),
  //             label: const Text("Disabled"),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  /* ************************************************************************************* */
  /* ROWS, COLUMNS AND EXPANDED */
  /* ************************************************************************************* */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          title: const Text('Rows | Columns | Expanded'),
          // actions: [
          //   IconButton(
          //       icon: const Icon(FontAwesomeIcons.locationDot,
          //           size: 20.0, color: Colors.white),
          //       onPressed: () {}),
          //   IconButton(
          //       icon: const Icon(FontAwesomeIcons.arrowsRotate,
          //           size: 18.0, color: Colors.white),
          //       onPressed: () => {})
          // ],
          elevation: 6.0,
          shadowColor: Colors.blueGrey,
          surfaceTintColor: Colors.lightBlueAccent,
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          color: Colors.lightGreen,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                children: [
                  Expanded(
                      child:
                          Image(image: AssetImage("images/chacecomlogo.png"))),
                  Expanded(
                      flex: 2,
                      child:
                          Image(image: AssetImage("images/chacecomlogo.png"))),
                  Expanded(
                      child:
                          Image(image: AssetImage("images/chacecomlogo.png"))),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment:CrossAxisAlignment.,
                // verticalDirection:VerticalDirection.up,
                // textDirection: TextDirection.rtl,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ChaceLogoNumbered(randomInt: returnVal(1)),
                      Text("CHACE ${returnVal(1)}")
                    ],
                  ),
                  Column(
                    children: [
                      ChaceLogoNumbered(randomInt: returnVal(2)),
                      Text("CHACE ${returnVal(2)}")
                    ],
                  ),
                  Column(
                    children: [
                      ChaceLogoNumbered(randomInt: returnVal(3)),
                      Text("CHACE ${returnVal(3)}")
                    ],
                  )
                  // ChaceLogoNumbered(randomInt: returnVal(2)),
                  // ChaceLogoNumbered(randomInt: returnVal(3)),
                ],
              ),
            ],
          ),
        ));
  }

  returnVal(int i) => i;
}