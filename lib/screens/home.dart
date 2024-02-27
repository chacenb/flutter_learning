import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import '../reusables/chacecomitemcomponent.dart';
import '../types/types.dart';
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

  returnVal(int i) => i;

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
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
  //         title: const Text('Rows | Columns | Expanded'),
  //         // actions: [
  //         //   IconButton(
  //         //       icon: const Icon(FontAwesomeIcons.locationDot,
  //         //           size: 20.0, color: Colors.white),
  //         //       onPressed: () {}),
  //         //   IconButton(
  //         //       icon: const Icon(FontAwesomeIcons.arrowsRotate,
  //         //           size: 18.0, color: Colors.white),
  //         //       onPressed: () => {})
  //         // ],
  //         elevation: 6.0,
  //         shadowColor: Colors.blueGrey,
  //         surfaceTintColor: Colors.lightBlueAccent,
  //         backgroundColor: Colors.blueGrey,
  //       ),
  //       body: Container(
  //         color: Colors.lightGreen,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             const Row(
  //               children: [
  //                 Expanded(
  //                     child:
  //                         Image(image: AssetImage("images/chacecomlogo.png"))),
  //                 Expanded(
  //                     flex: 2,
  //                     child:
  //                         Image(image: AssetImage("images/chacecomlogo.png"))),
  //                 Expanded(
  //                     child:
  //                         Image(image: AssetImage("images/chacecomlogo.png"))),
  //               ],
  //             ),
  //             const Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               // mainAxisSize: MainAxisSize.min,
  //               // crossAxisAlignment:CrossAxisAlignment.,
  //               // verticalDirection:VerticalDirection.up,
  //               // textDirection: TextDirection.rtl,
  //               children: [
  //                 Icon(Icons.star),
  //                 Icon(Icons.star),
  //                 Icon(Icons.star),
  //                 Icon(Icons.star_border),
  //                 Icon(Icons.star_border),
  //               ],
  //             ),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 Column(
  //                   children: [
  //                     ChaceLogoNumbered(randomInt: returnVal(1)),
  //                     Text("CHACE ${returnVal(1)}")
  //                   ],
  //                 ),
  //                 Column(
  //                   children: [
  //                     ChaceLogoNumbered(randomInt: returnVal(2)),
  //                     Text("CHACE ${returnVal(2)}")
  //                   ],
  //                 ),
  //                 Column(
  //                   children: [
  //                     ChaceLogoNumbered(randomInt: returnVal(3)),
  //                     Text("CHACE ${returnVal(3)}")
  //                   ],
  //                 )
  //                 // ChaceLogoNumbered(randomInt: returnVal(2)),
  //                 // ChaceLogoNumbered(randomInt: returnVal(3)),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ));
  // }

  /* ************************************************************************************* */
  /* ListView and List Tile */
  /* ************************************************************************************* */
  @override
  Widget build(BuildContext context) {
    // ChaceComItem chacecomItem;
    List<ChaceComItem> chacecomItemsList = [
      ChaceComItem("Banner", "Item description lorem ipsum "),
      ChaceComItem("FLyer", "Item description lorem ipsum "),
      ChaceComItem("Rollup", "Item description lorem ipsum "),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
            style:
                ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white))),
        title: const Text(
          'ListView | ListTile',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 6.0,
        shadowColor: Colors.blueGrey,
        surfaceTintColor: Colors.red[900],
        backgroundColor: Colors.red[500],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(13.0, 20.0, 13.0, 10.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              height: 180.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.black26, width: 2.8)
                  // boxShadow: const [
                  //   BoxShadow(
                  //       color: Colors.black12,
                  //       offset: Offset(1.6, 2.8),
                  //       blurRadius: 3.0,
                  //       spreadRadius: 0.8,
                  //       blurStyle: BlurStyle.normal)
                  // ],
                  ),
              child: const Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CHACE COM",
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                letterSpacing: 1.1),
                          ),
                          Text("Order Visuals",
                              style: TextStyle(
                                  fontSize: 55.0,
                                  fontWeight: FontWeight.w900,
                                  height: 1)),
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage("images/chacecomlogo.png"),
                            height: 130.0,
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                // color: Colors.blue,
                child: ListView(
                  // listView add "scrolling" functionnalities to the app
                  children: [
                    for (int i = 0; i < chacecomItemsList.length; i += 1)
                      // for (chacecomItem in chacecomItemsList)
                      ChaceComItemComponent(
                        label: chacecomItemsList[i].label,
                        description: chacecomItemsList[i].description,
                      ),
                    for (int i = 0; i < chacecomItemsList.length; i += 1)
                      ListTile(
                        leading:
                            Image(image: AssetImage("images/chacecomlogo.png")),
                        title: Text("ListTile title".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0,
                                height: 1.0)),
                        subtitle: Text("ListTile subtitle"),
                        trailing: IconButton(
                          icon: Icon(Icons.delete_outline, size: 40.0),
                          style: ButtonStyle(
                            iconColor: MaterialStatePropertyAll(Colors.red),
                          ),
                          onPressed: () => {},
                        ),
                        style: ListTileStyle.drawer,
                        shape: Border(),
                        splashColor: Colors.indigo,
                        hoverColor: Colors.redAccent,
                        onTap: () {},
                        tileColor: Colors.black12,
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
