import 'package:flutter/material.dart';

class ChaceComItemComponent extends StatefulWidget {
  String label;
  String description;
  double price;

  ChaceComItemComponent(
      {super.key,
      required this.label,
      required this.description,
      required this.price});

  @override
  State<ChaceComItemComponent> createState() => _ChaceComItemComponentState();
}

class _ChaceComItemComponentState extends State<ChaceComItemComponent> {
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
            child: CircleAvatar(child: Text(widget.label[0])),
            // child: Image(
            //     image: AssetImage("images/chacecomlogo.png"), height: 50.0),
          ),
          const Padding(padding: EdgeInsets.only(left: 3.0)),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.label.toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          height: 1.0)),
                  Text(widget.description,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: Colors.black38,
                          fontSize: 11))
                ],
              )),
          const Padding(padding: EdgeInsets.only(left: 5.0)),
          Expanded(flex: 2, child: Text("${widget.price.toString()} XAF")),
          Expanded(
              flex: 1,
              child: IconButton(
                icon: const Icon(Icons.visibility, size: 25.0),
                style: const ButtonStyle(
                  iconColor: MaterialStatePropertyAll(Colors.redAccent),
                ),
                onPressed: () => {},
              ))
        ],
      ),
    );
  }
}
