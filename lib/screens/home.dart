import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chace_test1/reusables/sideNavigationMenu.dart';
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
  /* Members */
  int counter = 0;
  double GPSposition = 0.0;
  List<ChaceComItem> chacecomItemsList = [
    ChaceComItem("Banner", "Item description lorem ipsum ", 450),
    ChaceComItem("FLyer", "Item description lorem ipsum ", 80.99),
    ChaceComItem("Umbrella", "Item description lorem ipsum ", 150.0),
    ChaceComItem("Rollup", "Item description lorem ipsum ", 1890.0),
    ChaceComItem("Pro. card", "Item description lorem ipsum ", 1200.0),
    ChaceComItem("Banner", "Item description lorem ipsum ", 450),
    ChaceComItem("FLyer", "Item description lorem ipsum ", 80.99),
    ChaceComItem("FLyer", "Item description lorem ipsum ", 80.99),
    ChaceComItem("Hat", "Item description lorem ipsum ", 890.0),
    ChaceComItem("Umbrella", "Item description lorem ipsum ", 150.0),
    ChaceComItem("Logo", "Item description lorem ipsum ", 80.0),
    ChaceComItem("Badge", "Item description lorem ipsum ", 890.0),
    ChaceComItem("Badge", "Item description lorem ipsum ", 890.0),
    ChaceComItem("Rollup", "Item description lorem ipsum ", 1890.0),
  ];

  /* Methods */
  getGPSpositions() => Random().nextDouble();

  resetGPSpositions() => GPSposition = 0.0;

  getNextNumber() => counter += 1;

  returnVal(int i) => i;

  onIconPress(String pressedIcon) => print("## pressed icon is ${pressedIcon}");

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
  // @override
  // Widget build(BuildContext context) {
  //   // ChaceComItem chacecomItem;
  //   List<ChaceComItem> chacecomItemsList = [
  //     ChaceComItem("Banner", "Item description lorem ipsum "),
  //     ChaceComItem("FLyer", "Item description lorem ipsum "),
  //     ChaceComItem("Rollup", "Item description lorem ipsum "),
  //   ];
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: IconButton(
  //           icon: const Icon(Icons.menu),
  //           onPressed: () {},
  //           style:
  //               ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white))),
  //       title: const Text(
  //         'ListView | ListTile',
  //         style: TextStyle(color: Colors.white),
  //       ),
  //       elevation: 6.0,
  //       shadowColor: Colors.blueGrey,
  //       surfaceTintColor: Colors.red[900],
  //       backgroundColor: Colors.red[500],
  //     ),
  //     body: Container(
  //       margin: EdgeInsets.fromLTRB(13.0, 20.0, 13.0, 10.0),
  //       child: Column(
  //         children: [
  //           Container(
  //             padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
  //             height: 180.0,
  //             decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.circular(20.0),
  //                 border: Border.all(color: Colors.black26, width: 2.8)
  //                 // boxShadow: const [
  //                 //   BoxShadow(
  //                 //       color: Colors.black12,
  //                 //       offset: Offset(1.6, 2.8),
  //                 //       blurRadius: 3.0,
  //                 //       spreadRadius: 0.8,
  //                 //       blurStyle: BlurStyle.normal)
  //                 // ],
  //                 ),
  //             child: const Row(
  //               children: [
  //                 Expanded(
  //                     flex: 3,
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.end,
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Text(
  //                           "CHACE COM",
  //                           style: TextStyle(
  //                               fontSize: 17.0,
  //                               fontWeight: FontWeight.bold,
  //                               color: Colors.red,
  //                               letterSpacing: 1.1),
  //                         ),
  //                         Text("Order Visuals",
  //                             style: TextStyle(
  //                                 fontSize: 55.0,
  //                                 fontWeight: FontWeight.w900,
  //                                 height: 1)),
  //                       ],
  //                     )),
  //                 Expanded(
  //                     flex: 2,
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.end,
  //                       children: [
  //                         Image(
  //                           image: AssetImage("images/chacecomlogo.png"),
  //                           height: 130.0,
  //                         ),
  //                       ],
  //                     )),
  //               ],
  //             ),
  //           ),
  //           Expanded(
  //             flex: 2,
  //             child: Container(
  //               // padding: EdgeInsets.all(8.0),
  //               margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
  //               // color: Colors.blue,
  //               child: ListView(
  //                 // listView add "scrolling" functionnalities to the app
  //                 children: [
  //                   for (int i = 0; i < chacecomItemsList.length; i += 1)
  //                     // for (chacecomItem in chacecomItemsList)
  //                     ChaceComItemComponent(
  //                       label: chacecomItemsList[i].label,
  //                       description: chacecomItemsList[i].description,
  //                     ),
  //                   for (int i = 0; i < chacecomItemsList.length; i += 1)
  //                     ListTile(
  //                       leading:
  //                           Image(image: AssetImage("images/chacecomlogo.png")),
  //                       title: Text("ListTile title".toUpperCase(),
  //                           style: TextStyle(
  //                               fontWeight: FontWeight.w800,
  //                               fontSize: 20.0,
  //                               height: 1.0)),
  //                       subtitle: Text("ListTile subtitle"),
  //                       trailing: IconButton(
  //                         icon: Icon(Icons.delete_outline, size: 40.0),
  //                         style: ButtonStyle(
  //                           iconColor: MaterialStatePropertyAll(Colors.red),
  //                         ),
  //                         onPressed: () => {},
  //                       ),
  //                       style: ListTileStyle.drawer,
  //                       shape: Border(),
  //                       splashColor: Colors.indigo,
  //                       hoverColor: Colors.redAccent,
  //                       onTap: () {},
  //                       tileColor: Colors.black12,
  //                     ),
  //                 ],
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // /* ************************************************************************************* */
  // /* ListView.builder : for iterations through dynamic values */
  // /* ************************************************************************************* */
  // @override
  // Widget build(BuildContext context) {
  //   // ChaceComItem chacecomItem;
  //   List<ChaceComItem> chacecomItemsList = [
  //     ChaceComItem("Banner", "Item description lorem ipsum ", 450),
  //     ChaceComItem("FLyer", "Item description lorem ipsum ", 80.99),
  //     ChaceComItem("Rollup", "Item description lorem ipsum ", 1890.0),
  //     ChaceComItem("Pro. card", "Item description lorem ipsum ", 1200.0),
  //     ChaceComItem("Hat", "Item description lorem ipsum ", 890.0),
  //     ChaceComItem("Umbrella", "Item description lorem ipsum ", 150.0),
  //     ChaceComItem("Logo", "Item description lorem ipsum ", 80.0),
  //     ChaceComItem("Badge", "Item description lorem ipsum ", 890.0),
  //   ];
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: IconButton(
  //           icon: const Icon(Icons.menu),
  //           onPressed: () {},
  //           style:
  //               ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white))),
  //       title: const Text(
  //         'ListView.builder',
  //         style: TextStyle(color: Colors.white),
  //       ),
  //       elevation: 6.0,
  //       shadowColor: Colors.blueGrey,
  //       surfaceTintColor: Colors.red[900],
  //       backgroundColor: Colors.red[500],
  //     ),
  //     body: Container(
  //       margin: EdgeInsets.fromLTRB(13.0, 20.0, 13.0, 10.0),
  //       child: Column(
  //         children: [
  //           Container(
  //               padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
  //               height: 130.0,
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(20.0),
  //                   border: Border.all(color: Colors.black26, width: 2.8),
  //                   boxShadow: const [
  //                     BoxShadow(
  //                         color: Colors.black12,
  //                         offset: Offset(1.0, 2.0),
  //                         blurRadius: 3.0,
  //                         spreadRadius: 1.2,
  //                         blurStyle: BlurStyle.normal)
  //                   ]),
  //               child: const Row(children: [
  //                 Expanded(
  //                     flex: 3,
  //                     child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text("CHACE COM",
  //                               style: TextStyle(
  //                                   fontSize: 14.0,
  //                                   fontWeight: FontWeight.bold,
  //                                   color: Colors.red,
  //                                   letterSpacing: 1.1)),
  //                           Text("Order Visuals",
  //                               style: TextStyle(
  //                                   fontSize: 40.0,
  //                                   fontWeight: FontWeight.w800,
  //                                   height: 0.9,
  //                                   letterSpacing: 1.1))
  //                         ])),
  //                 Expanded(
  //                     flex: 2,
  //                     child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         children: [
  //                           Image(
  //                               image: AssetImage("images/chacecomlogo.png"),
  //                               height: 90.0)
  //                         ])),
  //               ])), // Header of the page
  //           Expanded(
  //             flex: 2,
  //             child: Container(
  //               margin: EdgeInsets.only(top: 10.0),
  //               //  ListView.builder helps generate list of scrollable items
  //               child: ListView.builder(
  //                   padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
  //                   itemCount: chacecomItemsList.length,
  //                   itemBuilder: (context, i) {
  //                     /* we can return a ListTile ()*/
  //                     // return ListTile(
  //                     //   leading: CircleAvatar(
  //                     //       child: Text(chacecomItemsList[i].label[0])),
  //                     //   title: Text(chacecomItemsList[i].label),
  //                     //   subtitle: Text(chacecomItemsList[i].description),
  //                     //   trailing: Text(
  //                     //       "${chacecomItemsList[i].price.toString()} XAF"),
  //                     //   tileColor: Colors.grey.shade200,
  //                     //   style: ListTileStyle.drawer,
  //                     // );
  //
  //                     /* Or return a Custom component ()*/
  //                     return ChaceComItemComponent(
  //                         label: chacecomItemsList[i].label,
  //                         description: chacecomItemsList[i].description,
  //                         price: chacecomItemsList[i].price);
  //                   }),
  //               // child: ListView(
  //               //   // listView add "scrolling" functionnalities to the app
  //               //   children: [
  //               //     for (int i = 0; i < chacecomItemsList.length; i += 1)
  //               //       ChaceComItemComponent(
  //               //           label: chacecomItemsList[i].label,
  //               //           description: chacecomItemsList[i].description),
  //               //   ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  /* ************************************************************************************* */
  /* Navigation drawer  && bottomNavigationBar VID 2.11 */
  /* ************************************************************************************* */
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       foregroundColor: Colors.white,
  //       title: const Text('Side & Bottom Nav'),
  //       elevation: 6.0,
  //       shadowColor: Colors.blueGrey,
  //       surfaceTintColor: Colors.red[900],
  //       backgroundColor: Colors.red[500],
  //       actions: [
  //         IconButton(onPressed: () => onIconPress("search"), icon: Icon(Icons.search)),
  //         IconButton(onPressed: () => onIconPress("more_vert"), icon: Icon(Icons.more_vert)),
  //       ],
  //     ),
  //     drawer: Drawer(
  //       surfaceTintColor: Colors.red.shade400,
  //       width: 250.0,
  //       child: NavigationMenu(),
  //     ),
  //     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //     floatingActionButton: FloatingActionButton(
  //       backgroundColor: Colors.red,
  //       foregroundColor: Colors.white,
  //       // mini: true,
  //       shape: CircleBorder(),
  //       tooltip: 'Add item',
  //       onPressed: () {},
  //       child: Icon(Icons.add),
  //     ),
  //     bottomNavigationBar: BottomAppBar(
  //       notchMargin: 6.0,
  //       padding: EdgeInsets.symmetric(vertical: 0.1),
  //       height: 48.0,
  //       color: Colors.red,
  //       shadowColor: Colors.black,
  //       shape: CircularNotchedRectangle(),
  //       // OR AutomaticNotchedShape(RoundedRectangleBorder(), CircleBorder()),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Expanded(
  //               flex: 2,
  //               child: IconButton(
  //                   onPressed: () {},
  //                   style: const ButtonStyle(
  //                     foregroundColor: MaterialStatePropertyAll(Colors.white),
  //                   ),
  //                   icon: Icon(Icons.home)
  //                   // child: Icon(Icons.bookmark),
  //                   )),
  //           Expanded(
  //               flex: 2,
  //               child: IconButton(
  //                   onPressed: () {},
  //                   style: const ButtonStyle(
  //                     foregroundColor: MaterialStatePropertyAll(Colors.white),
  //                   ),
  //                   icon: Icon(Icons.bookmark)
  //                   // child: Icon(Icons.bookmark, size: 25.0),
  //                   )),
  //           // Padding(padding: EdgeInsets.all(30.0)),
  //           const Spacer(flex: 3),
  //           Expanded(
  //               flex: 2,
  //               child: IconButton(
  //                 onPressed: () {},
  //                 style: const ButtonStyle(
  //                   foregroundColor: MaterialStatePropertyAll(Colors.white),
  //                 ),
  //                 icon: Icon(Icons.camera_rounded),
  //                 // child: Icon(Icons.bookmark),
  //               )),
  //           Expanded(
  //               flex: 2,
  //               child: IconButton(
  //                 onPressed: () {},
  //                 style: const ButtonStyle(
  //                   foregroundColor: MaterialStatePropertyAll(Colors.white),
  //                 ),
  //                 icon: Icon(Icons.keyboard_voice_sharp),
  //                 // child: Icon(Icons.bookmark),
  //               )),
  //
  //           // Container(
  //           //   decoration: BoxDecoration(color: Colors.green),
  //           // ),
  //           //
  //           //   children: [
  //           //     Icon(
  //           //       Icons.camera_rounded,
  //           //       color: Colors.white,
  //           //       size: 25.0,
  //           //     ),
  //           //     Text(
  //           //       "shoot",
  //           //       style: TextStyle(
  //           //           fontSize: 11.0, height: 1.1, color: Colors.white),
  //           //     )
  //           //   ],
  //           // ),
  //           // Column(
  //           //   children: [
  //           //     Icon(
  //           //       Icons.home,
  //           //       color: Colors.white,
  //           //       size: 25.0,
  //           //     ),
  //           //     Text(
  //           //       "home",
  //           //       style: TextStyle(
  //           //           fontSize: 11.0, height: 1.1, color: Colors.white),
  //           //     )
  //           //   ],
  //           // ),
  //           // Column(
  //           //   children: [
  //           //     Icon(
  //           //       Icons.keyboard_voice_sharp,
  //           //       color: Colors.white,
  //           //       size: 25.0,
  //           //     ),
  //           //     Text(
  //           //       "record",
  //           //       style: TextStyle(
  //           //           fontSize: 11.0, height: 1.1, color: Colors.white),
  //           //     )
  //           //   ],
  //           // ),
  //         ],
  //       ),
  //     ),
  //     // bottomNavigationBar: BottomNavigationBar(
  //     //   type: BottomNavigationBarType.fixed,
  //     //   backgroundColor: Colors.red,
  //     //   items: [
  //     //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
  //     //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
  //     //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
  //     //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
  //     //   ],
  //     // ),
  //     body: Container(
  //       margin: const EdgeInsets.fromLTRB(13.0, 20.0, 13.0, 10.0),
  //       child: Column(
  //         children: [
  //           Container(
  //               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
  //               height: 130.0,
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(20.0),
  //                   border: Border.all(color: Colors.black26, width: 2.8),
  //                   boxShadow: const [BoxShadow(color: Colors.black12, offset: Offset(1.0, 2.0), blurRadius: 3.0, spreadRadius: 1.2, blurStyle: BlurStyle.normal)]),
  //               child: const Row(children: [
  //                 Expanded(
  //                     flex: 3,
  //                     child: Column(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
  //                       Text("CHACE COM", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.red, letterSpacing: 1.1)),
  //                       Text("Order Visuals", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800, height: 0.9, letterSpacing: 1.1))
  //                     ])),
  //                 Expanded(flex: 2, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [Image(image: AssetImage("images/logochacecomcolor.png"), height: 90.0)])),
  //               ])),
  //
  //           /// Header of the page
  //           Expanded(
  //             flex: 2,
  //             child: Container(
  //               margin: const EdgeInsets.only(top: 10.0),
  //
  //               ///  ListView.builder helps generate list of scrollable items
  //               child: ListView.builder(
  //                   padding: const EdgeInsets.fromLTRB(0, 0, 0, 30.0),
  //                   itemCount: chacecomItemsList.length,
  //                   itemBuilder: (context, i) {
  //                     /// we can return a ListTile ()
  //                     // return ListTile(
  //                     //   leading: CircleAvatar(
  //                     //       child: Text(chacecomItemsList[i].label[0])),
  //                     //   title: Text(chacecomItemsList[i].label),
  //                     //   subtitle: Text(chacecomItemsList[i].description),
  //                     //   trailing: Text(
  //                     //       "${chacecomItemsList[i].price.toString()} XAF"),
  //                     //   tileColor: Colors.grey.shade200,
  //                     //   style: ListTileStyle.drawer,
  //                     // );
  //
  //                     /// Or return a Custom component ()
  //                     return ChaceComItemComponent(label: chacecomItemsList[i].label, description: chacecomItemsList[i].description, price: chacecomItemsList[i].price);
  //                   }),
  //               // child: ListView(
  //               //   // listView add "scrolling" functionnalities to the app
  //               //   children: [
  //               //     for (int i = 0; i < chacecomItemsList.length; i += 1)
  //               //       ChaceComItemComponent(
  //               //           label: chacecomItemsList[i].label,
  //               //           description: chacecomItemsList[i].description),
  //               //   ],
  //             ),
  //
  //             /// We iterate using ListView.Builder in dataset of chace com items
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  /* ************************************************************************************* */
  /* Flutter Stack and Positioned Widget 2023 - Flutter Basics */
  /* ************************************************************************************* */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('Side & Bottom Nav'),
        elevation: 6.0,
        shadowColor: Colors.blueGrey,
        surfaceTintColor: Colors.red[900],
        backgroundColor: Colors.red[500],
        actions: [
          IconButton(onPressed: () => onIconPress("search"), icon: Icon(Icons.search)),
          IconButton(onPressed: () => onIconPress("more_vert"), icon: Icon(Icons.more_vert)),
        ],
      ),
      drawer: Drawer(
        surfaceTintColor: Colors.red.shade400,
        width: 250.0,
        child: SideNavigationMenu(),

        ///custom Navigation side drawer
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        // mini: true,
        shape: CircleBorder(),
        tooltip: 'Add item',
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6.0,
        padding: EdgeInsets.symmetric(vertical: 0.1),
        height: 48.0,
        color: Colors.red,
        shadowColor: Colors.black,
        shape: CircularNotchedRectangle(),

        /// OR AutomaticNotchedShape(RoundedRectangleBorder(), CircleBorder()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: IconButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    icon: Icon(Icons.home)
                    // child: Icon(Icons.bookmark),
                    )),
            Expanded(
                flex: 2,
                child: IconButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    icon: Icon(Icons.bookmark)
                    // child: Icon(Icons.bookmark, size: 25.0),
                    )),
            // Padding(padding: EdgeInsets.all(30.0)),
            const Spacer(flex: 3),
            Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  icon: Icon(Icons.camera_rounded),
                  // child: Icon(Icons.bookmark),
                )),
            Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  icon: Icon(Icons.keyboard_voice_sharp),
                  // child: Icon(Icons.bookmark),
                )),

            // Container(
            //   decoration: BoxDecoration(color: Colors.green),
            // ),
            //
            //   children: [
            //     Icon(
            //       Icons.camera_rounded,
            //       color: Colors.white,
            //       size: 25.0,
            //     ),
            //     Text(
            //       "shoot",
            //       style: TextStyle(
            //           fontSize: 11.0, height: 1.1, color: Colors.white),
            //     )
            //   ],
            // ),
            // Column(
            //   children: [
            //     Icon(
            //       Icons.home,
            //       color: Colors.white,
            //       size: 25.0,
            //     ),
            //     Text(
            //       "home",
            //       style: TextStyle(
            //           fontSize: 11.0, height: 1.1, color: Colors.white),
            //     )
            //   ],
            // ),
            // Column(
            //   children: [
            //     Icon(
            //       Icons.keyboard_voice_sharp,
            //       color: Colors.white,
            //       size: 25.0,
            //     ),
            //     Text(
            //       "record",
            //       style: TextStyle(
            //           fontSize: 11.0, height: 1.1, color: Colors.white),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.red,
      //   items: [
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
      //   ],
      // ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(13.0, 20.0, 13.0, 10.0),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                height: 130.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.black26, width: 2.8),
                    boxShadow: const [BoxShadow(color: Colors.black12, offset: Offset(1.0, 2.0), blurRadius: 3.0, spreadRadius: 1.2, blurStyle: BlurStyle.normal)]),
                child: const Row(children: [
                  Expanded(
                      flex: 3,
                      child: Column(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text("CHACE COM", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.red, letterSpacing: 1.1)),
                        Text("Order Visuals", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800, height: 0.9, letterSpacing: 1.1))
                      ])),
                  Expanded(flex: 2, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [Image(image: AssetImage("images/logochacecomcolor.png"), height: 90.0)])),
                ])),

            /// Header of the page
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),

                ///  ListView.builder helps generate list of scrollable items
                child: ListView.builder(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30.0),
                    itemCount: chacecomItemsList.length,
                    itemBuilder: (context, i) {
                      /// we can return a ListTile ()
                      // return ListTile(
                      //   leading: CircleAvatar(
                      //       child: Text(chacecomItemsList[i].label[0])),
                      //   title: Text(chacecomItemsList[i].label),
                      //   subtitle: Text(chacecomItemsList[i].description),
                      //   trailing: Text(
                      //       "${chacecomItemsList[i].price.toString()} XAF"),
                      //   tileColor: Colors.grey.shade200,
                      //   style: ListTileStyle.drawer,
                      // );

                  /// Or return a Custom component ()
                  return ChaceComItemComponent(label: chacecomItemsList[i].label, description: chacecomItemsList[i].description, price: chacecomItemsList[i].price);
                }),
          ),

              /// We iterate using ListView.Builder in dataset of chace com items
            ),
          ],
        ),
      ),
    );
  }
}
