import 'package:flutter/material.dart';

import '../types/types.dart';
import 'chacecomitemcomponent.dart';

class NavigationMenu extends StatelessWidget {
  List<NavigationMenuItem> navigationMenuItems = [
    NavigationMenuItem(
        Icon(Icons.home), "home", "Item description lorem ipsum "),
    NavigationMenuItem(
        Icon(Icons.store), "Products", "Item description lorem ipsum "),
    NavigationMenuItem(
        Icon(Icons.store), "Products", "Item description lorem ipsum "),
    NavigationMenuItem(
        Icon(Icons.store), "Products", "Item description lorem ipsum "),
    NavigationMenuItem(
        Icon(Icons.store), "Products", "Item description lorem ipsum "),
    NavigationMenuItem(
        Icon(Icons.store), "Products", "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
    NavigationMenuItem(Icon(Icons.contact_support_outlined), "About",
        "Item description lorem ipsum "),
  ];

  NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // listView add "scrolling" functionnalities to the app
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture:
              Image(image: AssetImage("images/logochacecomwhite.png")),
          // currentAccountPictureSize: Size(60.0, 60.0),
          accountName: Text(
            "CHACE COM",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 1.2,
                color: Colors.white),
          ),
          accountEmail: Text(
            "Graphics at the center of your business",
            style: TextStyle(
                color: Colors.white70,
                height: 1.1,
                fontSize: 11,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
          ),
          decoration: BoxDecoration(
            color: Colors.red.shade700,
            // borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(10.0),
            //     bottomRight: Radius.circular(10.0))
          ),
        ),
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
              onTap: () =>
                  print("Getting to ${navigationMenuItems[i].label} page")),
      ],
    );
  }
}
