import 'package:flutter/material.dart';

class ChaceComItem {
  String label;
  String description;
  double? price;
  bool? isPressed;

  ChaceComItem({required this.label, this.description = "No description provided", this.price = 00.0, this.isPressed = false});
// ChaceComItem(this._label, this._description, this._price, this._isPressed);
//
// ChaceComItem.labelOnly(String label, String? description) {
//   _label = label;
//   _description = " not provided";
//   _price = 00.0;
//   _isPressed = false;
// }

// ChaceComItem(this._label, this._description, this._price, this._itemIcon);
}

class NavigationMenuItem {
  // String _icon;
  //
  // String get icon => _icon;
  //
  // set icon(String value) {
  //   _icon = value;
  // }

  Widget _icon;

  Widget get icon => _icon;

  set icon(Widget value) {
    _icon = value;
  }

  String _label;

  String get label => _label;

  set label(String value) {
    _label = value;
  }

  Widget _target;

  Widget get target => _target;

  set target(Widget value) {
    _target = value;
  }

  NavigationMenuItem(this._icon, this._label, this._target);
}
