import 'package:flutter/material.dart';

// class  extends StatelessWidget {
//   const ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class ChaceComItem {
  String _label;

  String get label => _label;

  set label(String value) {
    _label = value;
  }
  String _description;

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  double _price;

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  ChaceComItem(this._label, this._description, this._price);


// @override
  // String toString() {
  //   return 'ChaceComItem{label: $label, description: $description}';
  // }
}
