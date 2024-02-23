import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//
// class Home extends StatelessWidget {
//   Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               child: ElevatedButton(
//                 onPressed: () {
//                   getGPSpositions();
//                 },
//                 child: Text("get GPS"),
//               ),
//             ),
//             Text("GPS position : ${GPSposition}")
//           ],
//         ),
//       ),
//     );
//   }

/* ************************************************************************************* */
/* ** ADDING BUTTONS | TRANSFORMING BUTTONS INTO ICONS | get GPS dynamically *********** */

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ElevatedButton(
              onPressed: null, /* this disables a button */
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll(5.0),
                padding: MaterialStatePropertyAll(EdgeInsets.all(10.0)),
              ),
              child: Text("GET POSITION",
                  style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            ElevatedButton(
              onPressed: () {
                setState(() => GPSposition = getGPSpositions());
              },
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(CircleBorder()),
                elevation: MaterialStatePropertyAll(5.0),
                padding: MaterialStatePropertyAll(EdgeInsets.all(10.0)),
              ),
              child: Icon(FontAwesomeIcons.locationDot,
                  size: 50.0, color: Colors.red[600]),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            ElevatedButton.icon(
              onPressed: () {
                setState(() => GPSposition = getGPSpositions());
              },
              style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(5.0),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(10.0))),
              icon: Icon(FontAwesomeIcons.locationDot, color: Colors.red[600]),
              label: const Text("GET POSITION",
                  style: TextStyle(/*fontSize: 18.0,*/ color: Colors.black)),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            Text(
              "GPS position : $GPSposition",
              style: (const TextStyle(fontSize: 18.0)),
            ),
            const Padding(padding: EdgeInsets.all(50.0)),
            /* USE WHETHER "OutlinedButton.icon" or "ElevatedButton.icon" */
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              onPressed: () {
                setState(() => GPSposition = resetGPSpositions());
              },
              icon: const Icon(FontAwesomeIcons.arrowsRotate, size: 12.0),
              label: const Text("Reset"),
              // child: Text('TextButton'),
            ),
            // const Padding(padding: EdgeInsets.all(8.0)),
            /* USE WHETHER "OutlinedButton.icon" or "ElevatedButton.icon" */
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              onPressed: null,
              /* this disables a button */
              icon: const Icon(FontAwesomeIcons.lock, size: 12.0),
              label: const Text("Disabled"),
              // child: Text('TextButton'),
            )
          ],
        ),
      ),
    );
  }

  double GPSposition = 0.0;

  getGPSpositions() => Random().nextDouble();

  resetGPSpositions() => GPSposition = 0.0;
}
