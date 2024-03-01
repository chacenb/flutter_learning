import 'package:flutter/material.dart';

import '../types/types.dart';

class ChaceComItems extends StatefulWidget {
  ChaceComItems({super.key});

  @override
  State<ChaceComItems> createState() => _ChaceComItemsState();
}

class _ChaceComItemsState extends State<ChaceComItems> {
  List<ChaceComItem> chacecomItemsList = [
    ChaceComItem("Banner", "Item description lorem ipsum ", 450),
    ChaceComItem("FLyer", "Item description lorem ipsum ", 80.99),
    ChaceComItem("Umbrella", "Item description lorem ipsum ", 150.0),
    ChaceComItem("Rollup", "Item description lorem ipsum ", 1890.0),
    ChaceComItem("Pro. card", "Item description lorem ipsum ", 1200.0),
    ChaceComItem("Banner", "Item description lorem ipsum ", 450),
    ChaceComItem("FLyer", "Item description lorem ipsum ", 80.99),
    ChaceComItem("FLyer", "Item description lorem ipsum ", 80.99),
    ChaceComItem("Hat", "Item description lorem ipsum ", 890.0),
    ChaceComItem("Umbrella", "Item description lorem ipsum ", 150.0),
    ChaceComItem("Logo", "Item description lorem ipsum ", 80.0),
    ChaceComItem("Badge", "Item description lorem ipsum ", 890.0),
    ChaceComItem("Badge", "Item description lorem ipsum ", 890.0),
    ChaceComItem("Rollup", "Item description lorem ipsum ", 1890.0),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30.0),
        itemCount: chacecomItemsList.length,
        itemBuilder: (context, i) {
          /// we can return a ListTile ()
          // return Container(
          //   margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(13.0),
          //     boxShadow: const [BoxShadow(color: Colors.black12, offset: Offset(1.6, 2.8), blurRadius: 3.0, spreadRadius: 0.8, blurStyle: BlurStyle.normal)],
          //   ),
          //   child: ListTile(
          //     leading: CircleAvatar(child: Text(chacecomItemsList[i].label[0])),
          //     title: Text(chacecomItemsList[i].label, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, height: 0.8)),
          //     subtitle: Text("Price : ${chacecomItemsList[i].price.toString()} XAF",
          //         style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: Colors.white54, fontSize: 12)),
          //     trailing: Icon(Icons.visibility, size: 25.0, color: Colors.black87),
          //     visualDensity: VisualDensity.compact,
          //     tileColor: Colors.grey,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15.0), /*side: BorderSide(color: Colors.grey, width: 1.3)*/
          //     ),
          //     onTap: () => print("TAPPED on chace com item"),
          //     onLongPress: () => print("LONG PRESSED on chace com item"),
          //   ),
          // );

          /// Or return a Custom component ()
          return Container(
            margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            // height: 80.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
              boxShadow: const [BoxShadow(color: Colors.black26, offset: Offset(1.6, 2.8), blurRadius: 3.0, spreadRadius: 0.8, blurStyle: BlurStyle.normal)],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(child: Text(chacecomItemsList[i].label[0])),
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
                        Text(chacecomItemsList[i].label.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, height: 1.0)),
                        Text(chacecomItemsList[i].description,
                            style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: Colors.black38, fontSize: 11))
                      ],
                    )),
                const Padding(padding: EdgeInsets.only(left: 5.0)),
                Expanded(flex: 2, child: Text("${chacecomItemsList[i].price.toString()} XAF")),
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
        });
    //
    // Container(
    //   margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
    //   height: 80.0,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(13.0),
    //     boxShadow: const [BoxShadow(color: Colors.black12, offset: Offset(1.6, 2.8), blurRadius: 3.0, spreadRadius: 0.8, blurStyle: BlurStyle.normal)],
    //   ),
    //   child: Row(
    //     children: [
    //       Expanded(
    //         flex: 1,
    //         child: CircleAvatar(child: Text(widget.label[0])),
    //         // child: Image(
    //         //     image: AssetImage("images/chacecomlogo.png"), height: 50.0),
    //       ),
    //       const Padding(padding: EdgeInsets.only(left: 3.0)),
    //       Expanded(
    //           flex: 3,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(widget.label.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, height: 1.0)),
    //               Text(widget.description, style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: Colors.black38, fontSize: 11))
    //             ],
    //           )),
    //       const Padding(padding: EdgeInsets.only(left: 5.0)),
    //       Expanded(flex: 2, child: Text("${widget.price.toString()} XAF")),
    //       Expanded(
    //           flex: 1,
    //           child: IconButton(
    //             icon: const Icon(Icons.visibility, size: 25.0),
    //             style: const ButtonStyle(
    //               iconColor: MaterialStatePropertyAll(Colors.redAccent),
    //             ),
    //             onPressed: () => {},
    //           ))
    //     ],
    //   ),
    // );
  }
}
