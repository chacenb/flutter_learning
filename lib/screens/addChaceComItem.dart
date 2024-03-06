import 'package:flutter/material.dart';
import 'package:flutter_chace_test1/dummyData/dummyData.dart';
import 'package:flutter_chace_test1/screens/home.dart';
import 'package:flutter_chace_test1/types/types.dart';

import '../components/appBar_sideMenu_downNav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddChaceComItem extends StatefulWidget {
  const AddChaceComItem({super.key});

  @override
  State<AddChaceComItem> createState() => _AddChaceComItemState();
}

class _AddChaceComItemState extends State<AddChaceComItem> {
  String _itemName = "";
  final _itemNameCtrl = TextEditingController();

  // ChaceComItem ccitem = ChaceComItem();

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
                const Text(
                  "Fill the form to add a new CHACE COM item",
                  style: TextStyle(color: Colors.black54),
                ),
                const Padding(padding: EdgeInsets.all(20.0)),
                TextFormField(
                  // onChanged: (value) => liveUpdateTextField(value),
                  controller: _itemNameCtrl,
                  decoration: const InputDecoration(
                    labelText: "Item name",
                    prefixIcon: Icon(Icons.abc),
                    border: OutlineInputBorder(),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                // Text("data filled in field is ${this._itemNameCtrl.text}"),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () => saveItem(context), child: Text("Save item")),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    this._itemNameCtrl.dispose();
    super.dispose();
  }

  dynamic saveItem(BuildContext context) {
    print("item name length is ${_itemNameCtrl.text.length}");
    if (_itemNameCtrl.text.length > 0) {
      dummyData_chacecomItemsList.add(ChaceComItem(label: _itemNameCtrl.text)); //first add element to list
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home())); //then navigate to home list screen
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Warning"),
          content: Text("There are empty fields"),
        ),
      );
      // ;
    }
  }
}
