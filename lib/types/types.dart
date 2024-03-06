import 'package:flutter/material.dart';

class ChaceComItem {
  String label;

  // String get label => _label;
  //
  // set label(String value) {
  //   _label = value;
  // }

  String description;

  // String get description => _description;
  //
  // set description(String value) {
  //   _description = value;
  // }

  double? price;

  // double get price => _price;
  //
  // set price(double value) {
  //   _price = value;
  // }

  bool? isPressed;

  // bool get isPressed => _isPressed;
  //
  // set isPressed(bool value) {
  //   _isPressed = value;
  // }

  // Icon _itemIcon;
  //
  // Icon get itemIcon => _itemIcon;
  //
  // set itemIcon(Icon value) {
  //   _itemIcon = value;
  // }

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
