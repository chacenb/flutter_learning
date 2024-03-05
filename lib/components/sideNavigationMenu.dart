import 'package:flutter/material.dart';
import 'package:flutter_chace_test1/screens/home.dart';

import '../types/types.dart';

class SideNavigationMenu extends StatelessWidget {
  List<NavigationMenuItem> navigationMenuItems = [
    NavigationMenuItem(Icon(Icons.home), "home", Home()),
    // NavigationMenuItem(Icon(Icons.store), "Products", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.store), "Products", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.store), "Products", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.store), "Products", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.store), "Products", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
    // NavigationMenuItem(Icon(Icons.contact_support_outlined), "About", "Item description lorem ipsum "),
  ];

  SideNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // listView add "scrolling" functionnalities to the app
      children: [
        // THIS IS A CLASS TO LOAD A PREBUILT DRAWEER HEADER
        UserAccountsDrawerHeader(
          // margin: EdgeInsets.all(30.0),
          // currentAccountPictureSize: Size.square(40.0),
          otherAccountsPicturesSize: Size.square(13.0),

          otherAccountsPictures: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: IconButton(icon : Icon(Icons.account_circle), onPressed: () {  },),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: IconButton(icon : Icon(Icons.add_circle_outline), onPressed: () {  },),
            // ),
            Icon(Icons.add_circle_outline, color: Colors.white),
            Icon(Icons.account_box_rounded, color: Colors.white,),
          ],
          currentAccountPicture: Image(image: AssetImage("images/logochacecomwhite.png")),
          // currentAccountPictureSize: Size(60.0, 60.0),
          accountName: Text(
            "CHACE COM",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, height: 1.0, color: Colors.white),
          ),
          accountEmail: Text(
            "Graphics at the center of your business",
            style: TextStyle(color: Colors.white70, height: 1.0, fontSize: 11, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
          ),
          decoration: BoxDecoration(
            color: Colors.red.shade700,
            // borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(10.0),
            //     bottomRight: Radius.circular(10.0))
          ),
        ),

        // THIS IS A CLASS TO CREATE MANUALLY A DRAWEER HEADER
        // DrawerHeader(
        //   padding: EdgeInsets.all(0.0),
        //   child: Container(
        //     padding: EdgeInsets.all(10.0),
        //     decoration: BoxDecoration(
        //       color: Colors.redAccent,
        //       // borderRadius: BorderRadius.only(
        //       //     bottomLeft: Radius.circular(10.0),
        //       //     bottomRight: Radius.circular(10.0))
        //     ),
        //     // height: 180.0,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Image(image: AssetImage("images/ic_launcher.png"), width: 70.0),
        //         Text(
        //           "CHACE COM",
        //           style: TextStyle(
        //               fontWeight: FontWeight.w600,
        //               height: 1.5,
        //               color: Colors.white),
        //         ),
        //         Text(
        //           "Graphics at the center of your business",
        //           style: TextStyle(
        //               color: Colors.white70,
        //               height: 1.1,
        //               fontSize: 10,
        //               fontWeight: FontWeight.w400,
        //               fontStyle: FontStyle.italic),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        for (int i = 0; i < navigationMenuItems.length; i += 1)
          ListTile(
              leading: navigationMenuItems[i].icon,
              title: Text(navigationMenuItems[i].label),
              onTap: () {
                print("Getting to ${navigationMenuItems[i].label} page");

                /// Navigator.pop() will pop the Drawer route off the stack and cause it to close.
                Navigator.pop(context);

                /// Navigate from this screen to home screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => navigationMenuItems[i].target));
              }),
      ],
    );
  }
}
