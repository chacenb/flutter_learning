import 'package:libserialport/libserialport.dart';
import 'package:flutter/material.dart'; // we need to import this inside all the dart files we create

class ReadGPSdataLibserialport extends StatelessWidget {
  const ReadGPSdataLibserialport({super.key});

  @override
  Widget build(BuildContext context) {
    print('Available ports:');
    var i = 0;
    for (final name in SerialPort.availablePorts) {
      final sp = SerialPort(name);
      print('${++i}) $name');
      print('\tDescription: ${sp.description}');
      print('\tManufacturer: ${sp.manufacturer}');
      print('\tSerial Number: ${sp.serialNumber}');
      print('\tProduct ID: 0x${sp.productId!.toRadixString(16)}');
      print('\tVendor ID: 0x${sp.vendorId!.toRadixString(16)}');
      sp.dispose();
    }
    return const Placeholder();
  }
}

//
// // ignore_for_file: avoid_print
//
// void main() {
//   print('Available ports:');
//   var i = 0;
//   for (final name in SerialPort.availablePorts) {
//     final sp = SerialPort(name);
//     print('${++i}) $name');
//     print('\tDescription: ${sp.description}');
//     print('\tManufacturer: ${sp.manufacturer}');
//     print('\tSerial Number: ${sp.serialNumber}');
//     print('\tProduct ID: 0x${sp.productId!.toRadixString(16)}');
//     print('\tVendor ID: 0x${sp.vendorId!.toRadixString(16)}');
//     sp.dispose();
//   }
// }
