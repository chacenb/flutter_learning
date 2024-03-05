import 'package:flutter/material.dart';

import '../components/appBar_sideMenu_downNav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddChaceComItem extends StatefulWidget {
  const AddChaceComItem({super.key});

  @override
  State<AddChaceComItem> createState() => _AddChaceComItemState();
}

class _AddChaceComItemState extends State<AddChaceComItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// page shared elements
      appBar: chaceAppBar(context: context, appBarTitle: 'Add item', hasActions: false),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("CC Item", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, height: 1.1)),
                const Text("Fill the form to add a new CHACE COM item"),
                Padding(padding: EdgeInsets.all(20.0)),
                // const Text("CC Item", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, height: 1.1)),
                // const Text("Fill the form to add a new CHACE COM item"),
                // TextField(
                //   decoration: InputDecoration(hintText: "Ex: label", icon: Icon(Icons.abc)),
                // ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Item name", prefixIcon: Icon(Icons.abc), border: OutlineInputBorder()),
                ),
              ],
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: TextButton.icon(
      //     style: TextButton.styleFrom(
      //       foregroundColor: Colors.blue,
      //     ),
      //     onPressed: () {
      //       /// Navigate from this screen to home screen
      //       // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      //     },
      //     icon: const Icon(FontAwesomeIcons.arrowRight, size: 12.0),
      //     label:
      //     // child: Text('TextButton'),
      //   ),
      // ),
    );
  }
}
