import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chace_test1/screens/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/appBar_sideMenu_downNav.dart';
import '../components/chacelogonumbered.dart';

class Dashboard extends StatelessWidget {
  int counter = 0;

  Dashboard({super.key});

  getNextNumber() => counter += 1;

  getGPSpositions() => Random().nextInt(100);

/* ************************************************************************* */
/* NAVIGATE TO A NEW SCREEN */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// page shared elements
      appBar: chaceAppBar(context: context, appBarTitle: 'Dashboard', hasBackArrow: false, hasActions: false),
      drawer: chaceSideDrawer(context, SIDE_DRAWER_SIZE),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: chaceFloatingActionButton(context, 'Add item'),
      bottomNavigationBar: chaceBottomAppBar(context, true),


      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            /// stack Header of the page
            height: 430,
            decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: BorderRadius.circular(13.0),
              boxShadow: const [BoxShadow(color: Colors.black87, offset: Offset(1.3, 2.0), blurRadius: 5.0, spreadRadius: 1.0, blurStyle: BlurStyle.normal)],
              image: DecorationImage(image: AssetImage("images/editlogochacecom.png"), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 10.0,
                    top: 10.0,
                    child: Text("Order Visuals", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800, height: 0.9, letterSpacing: 0.5, color: Colors.white))),
                Positioned(
                    left: 12.0,
                    top: 48.0,
                    child: Text("CHACE COM",
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red.shade200, letterSpacing: 1.1))),
                Positioned(right: 08.0, bottom: 06.0, child: Text("Your partner COM", style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic, color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }

/* ************************************************************************* */
/* ROWS AND COLUMNS */
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
  //         title: const Text('Rows | Columns'),
  //         actions: [
  //           IconButton(icon: const Icon(FontAwesomeIcons.locationDot, size: 20.0, color: Colors.white), onPressed: () {}),
  //           IconButton(icon: const Icon(FontAwesomeIcons.arrowsRotate, size: 18.0, color: Colors.white), onPressed: () => {})
  //         ],
  //         elevation: 6.0,
  //         shadowColor: Colors.blueGrey,
  //         surfaceTintColor: Colors.lightBlueAccent,
  //         backgroundColor: Colors.blueGrey,
  //       ),
  //       body: Container(
  //         child: Row(
  //           children: [
  //             ChaceLogoNumbered(randomInt: getNextNumber()),
  //             ChaceLogoNumbered(randomInt: getNextNumber()),
  //             ChaceLogoNumbered(randomInt: getNextNumber()),
  //           ],
  //         ),
  //       ));
  // }

/* ************************************************************************* */
/* Working with container : Layout the canvas : OK */
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: ListView(
//       // column container
//       children: [
//         Container(
//             // width: 400.0,
//             height: 550.0,
//             margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
//             decoration: BoxDecoration(
//               color: Colors.green[100],
//               border: Border.all(color: Colors.black, width: 1.0),
//               borderRadius: const BorderRadius.all(Radius.circular(15.0)),
//             ),
//             // alignment: Alignment.center,
//             child: ListView(
//               padding: const EdgeInsets.all(10.0),
//               children: <Widget>[
//                 for (int i = 0;
//                     i < 6;
//                     i += 1) // loop to render multiple widgets
//                   Container(
//                       padding: const EdgeInsets.all(10.0),
//                       margin: const EdgeInsets.all(10.0),
//                       width: 200.0,
//                       height: 150.0,
//                       alignment: Alignment.center,
//                       decoration: const BoxDecoration(
//                         // color: Colors.white,
//                         image: DecorationImage(
//                           image: AssetImage("images/chacecomlogo.png"),
//                           // fit: BoxFit.fill
//                         ),
//                         border: Border.symmetric(
//                             vertical:
//                                 BorderSide(color: Colors.grey, width: 3.0),
//                             horizontal:
//                                 BorderSide(color: Colors.grey, width: 3.0)),
//                         // borderRadius: const BorderRadius.all(Radius.circular(15.0)),
//                         shape: BoxShape.circle,
//                         // doesn't work along w/ borderRadius
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.blueGrey,
//                               offset: Offset(2.0, 3.0),
//                               blurRadius: 13.0,
//                               spreadRadius: 1.0,
//                               blurStyle: BlurStyle.normal)
//                         ],
//                         // backgroundBlendMode: BlendMode.hardLight,
//                       ),
//                       child: Text(
//                         'Cont ${getNextNumber()}',
//                         style: const TextStyle(
//                             fontSize: 13.0, fontWeight: FontWeight.bold),
//                       )),
//                 Text(
//                   'GPS position is ${getGPSpositions()}',
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(fontSize: 23.0),
//                 )
//               ],
//             )),
//         Center(
//           child: ElevatedButton(
//             onPressed: () => getGPSpositions(),
//             child: const Text("get GPS"),
//           ),
//         ),
//       ],
//     ),
//   );
// }

/* ************************************************************************* */
/* Adding icons */
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Dashboard'),
  //       backgroundColor: Colors.cyan,
  //     ),
  //     body: Center(
  //       child: IconButton(
  //         // icon: Icon(Icons.alt_route_rounded,), // this is a material icon
  //         icon: const Icon(FontAwesomeIcons.anchor), // this is a fontawesome icon after installing the dependency
  //         color: Colors.red,
  //         // iconSize: 30.0,
  //         onPressed: () {},
  //         // splashColor: Colors.green,
  //         highlightColor: Colors.lightBlueAccent,
  //       ),
  //     ),
  //   );
  // }

/* ************************************************************************* */
/* Adding images basics */
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Dashboard'),
//           backgroundColor: Colors.cyan,
//         ),
//         body: const Image(
//           image: AssetImage("images/chacecomlogo.png"),
//           width: 200.0,
//           // height: 800.0,
//           opacity: AlwaysStoppedAnimation(0.6),
//           repeat: ImageRepeat.repeat,
//           // alignment: Alignment.bottomRight,
//           // fit: BoxFit.contain,
//         ),
//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {},
//         //   child: const Text("NEW"),
//         // ),
//         // const Text("+"),
//         );
//   }

/* ************************************************************************* */
/* Working with some logic inside the code  ---------*/
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('dashboard'.toUpperCase()),
  //       backgroundColor: Colors.cyan,
  //     ),
  //     body: Center(
  //       child: Text.rich(
  //         TextSpan(
  //           text: "welcome to",
  //           children: [
  //             // TextSpan(text: '--'),
  //             const TextSpan(
  //               text: 'CHACE',
  //               style: TextStyle(
  //                 fontSize: 50.0,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             const TextSpan(
  //               text: 'App',
  //               style: TextStyle(
  //                   color: Colors.blueAccent,
  //                   fontSize: 30.0,
  //                   backgroundColor: Colors.amber),
  //             ),
  //             TextSpan(text: ': ${getNumber()}')
  //           ],
  //         ),
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () {},
  //       child: const Text("NEW"),
  //     ),
  //     // const Text("+"),
  //   );
  // }

  getNumber() => Random().nextInt(100);
}
