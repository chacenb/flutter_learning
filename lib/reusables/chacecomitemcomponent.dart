import 'package:flutter/material.dart';

class ChaceComItemComponent extends StatefulWidget {
  String label;
  String description;

  ChaceComItemComponent(
      {super.key, required this.label, required this.description});

  @override
  State<ChaceComItemComponent> createState() => _ChaceComItemComponentState();
}

class _ChaceComItemComponentState extends State<ChaceComItemComponent> {
  String label = "Label";
  String description = "Description";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
      height: 80.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(1.6, 2.8),
              blurRadius: 3.0,
              spreadRadius: 0.8,
              blurStyle: BlurStyle.normal)
        ],
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image(image: AssetImage("images/chacecomlogo.png"))),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.label.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                          height: 1.0)),
                  Text(this.description,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic))
                ],
              )),
          Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.delete_outline, size: 40.0),
                style: ButtonStyle(
                  iconColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed: () => {},
              )),
        ],
      ),
    );
  }
}
