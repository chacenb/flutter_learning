import 'package:flutter/material.dart';

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
}

class NavigationMenuItem{

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
  String _target;

  String get target => _target;

  set target(String value) {
    _target = value;
  }

  NavigationMenuItem(this._icon, this._label, this._target);
}
