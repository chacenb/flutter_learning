// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_chace_test1/components/sideNavigationMenu.dart';
import 'package:flutter_chace_test1/screens/addChaceComItem.dart';
import 'package:flutter_chace_test1/screens/dashboard.dart';

import '../screens/home.dart';

double SIDE_DRAWER_SIZE = 390.0;

AppBar chaceAppBar({required BuildContext context, required String appBarTitle, bool hasBackArrow = true, required bool hasActions}) {
  return AppBar(
    foregroundColor: Colors.white,
    title: Text(appBarTitle),

    /// Navigate back to previous screen
    leading: hasBackArrow ? IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)) : null,
    elevation: 6.0,
    shadowColor: Colors.blueGrey,
    surfaceTintColor: Colors.red[900],
    backgroundColor: Colors.red[500],
    actions: (!hasActions)
        ? null
        : [
            IconButton(onPressed: () => onIconPress("search"), icon: Icon(Icons.search)),
            IconButton(onPressed: () => onIconPress("more_vert"), icon: Icon(Icons.more_vert)),
          ],
  );
}

onIconPress(String pressedIcon) => print("## pressed icon is $pressedIcon");

Drawer chaceSideDrawer(BuildContext context, double drawerWidth) {
  return Drawer(
    surfaceTintColor: Colors.red.shade400,
    width: drawerWidth,

    ///custom Navigation side drawer
    child: SideNavigationMenu(),
  );
}

BottomAppBar chaceBottomAppBar(BuildContext context, bool isNotched) {
  return BottomAppBar(
    notchMargin: 6.0,
    padding: const EdgeInsets.symmetric(vertical: 0.1),
    height: 48.0,
    color: Colors.red,
    shadowColor: Colors.black,

    /// OR use AutomaticNotchedShape(RoundedRectangleBorder(), CircleBorder()),
    shape: CircularNotchedRectangle(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: IconButton(
                onPressed: () {
                  /// Navigate from this screen to home screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
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
        if (isNotched) const Spacer(flex: 3),
        // isNotched ? Spacer(flex: (isNotched ? 3 : 1)) : null,
        Expanded(
            flex: 2,
            child: IconButton(
              onPressed: () {},
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              icon: Icon(Icons.location_pin),
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
      ],
    ),
  );
}

// BottomNavigationBar chaceBottomAppBar(BuildContext context, bool isNotched) {
//   return BottomNavigationBar(items: [
//     BottomNavigationBarItem(
//         label: "label test",
//         icon: IconButton(
//             onPressed: () {
//               /// Navigate from this screen to home screen
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
//             },
//             style: const ButtonStyle(
//               foregroundColor: MaterialStatePropertyAll(Colors.white),
//             ),
//             icon: Icon(Icons.home)
//             // child: Icon(Icons.bookmark),
//             )),
//     BottomNavigationBarItem(
//         label: "label test",
//         icon: IconButton(
//             onPressed: () {
//               /// Navigate from this screen to home screen
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
//             },
//             style: const ButtonStyle(
//               foregroundColor: MaterialStatePropertyAll(Colors.white),
//             ),
//             icon: Icon(Icons.home)
//             // child: Icon(Icons.bookmark),
//             )),
//     BottomNavigationBarItem(
//         label: "label test",
//         icon: IconButton(
//             onPressed: () {
//               /// Navigate from this screen to home screen
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
//             },
//             style: const ButtonStyle(
//               foregroundColor: MaterialStatePropertyAll(Colors.white),
//             ),
//             icon: Icon(Icons.home)
//             // child: Icon(Icons.bookmark),
//             ))
//   ]);
// }

FloatingActionButton chaceFloatingActionButton(BuildContext context, String tooltip) {
  return FloatingActionButton(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
    shape: const CircleBorder(),
    tooltip: tooltip,
    onPressed: () {
      /// Navigate from this screen to home screen
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AddChaceComItem();
      }));
    },
    child: const Icon(Icons.add),
  );
}
