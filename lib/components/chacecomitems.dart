import 'package:flutter/material.dart';
import 'package:flutter_chace_test1/components/chacecomItemLayout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../types/types.dart';

class ChaceComItems extends StatefulWidget {
  List<ChaceComItem> chacecomItemsList;

  ChaceComItems({super.key, required this.chacecomItemsList});

  @override
  State<ChaceComItems> createState() => _ChaceComItemsState();
}


/* ************************************************************************************* */
/* Added first interaction to ListView using ListTiles  */
/* ************************************************************************************* */
class _ChaceComItemsState extends State<ChaceComItems> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30.0),
        itemCount: widget.chacecomItemsList.length,
        itemBuilder: (context, i) {
          /// we can return a local function that returns a ListTile ()
          return chacecomListTileItem(i, isPressed);

          /// Or return a Custom made component ()
          // return ChaceComItemW(
          //   label: widget.chacecomItemsList[i].label,
          //   description: widget.chacecomItemsList[i].description,
          //   price: widget.chacecomItemsList[i].price,
          //   // icon: widget.chacecomItemsList[i].itemIcon,
          // );
        });
  }

  /// returns chace com items using ListTile design
  Container chacecomListTileItem(int i, bool pressed) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: const [BoxShadow(color: Colors.black12, offset: Offset(1.6, 2.8), blurRadius: 3.0, spreadRadius: 0.8, blurStyle: BlurStyle.normal)],
      ),
      child: ListTile(
        leading: CircleAvatar(child: Text(widget.chacecomItemsList[i].label[0])),
        title: Text(widget.chacecomItemsList[i].label, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, height: 0.8)),
        subtitle: Text("Price : ${widget.chacecomItemsList[i].price.toString()} XAF", style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: Colors.white54, fontSize: 12)),
        // trailing: pressed ? (Icon(Icons.visibility, size: 25.0, color: Colors.black87)) : (Icon(Icons.visibility, size: 25.0, color: Colors.red)),
        trailing: (widget.chacecomItemsList[i].isPressed) ? (Icon(Icons.favorite, size: 25.0, color: Colors.red.shade400)) : (Icon(Icons.favorite_border, size: 25.0, color: Colors.black)),
        visualDensity: VisualDensity.compact,
        tileColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), /*side: BorderSide(color: Colors.grey, width: 1.3)*/
        ),
        onTap: () => setState(() {
          // this.isPressed = !this.isPressed;
          print("PRESSED chace com item [ListTile] before ${widget.chacecomItemsList[i].isPressed}");
          widget.chacecomItemsList[i].isPressed = !widget.chacecomItemsList[i].isPressed;
          // print("PRESSED chace com item [ListTile] $pressed");
          print("PRESSED chace com item [ListTile] ${widget.chacecomItemsList[i].isPressed}");
        }),
        onLongPress: () => print("LONG PRESSED on chace com item"),
      ),
    );
  }

  /// returns chace com items using Custom design
// Container chacecomCustomItem(int i) {
//   return Container(
//     margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
//     padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(13.0),
//       boxShadow: const [BoxShadow(color: Colors.black26, offset: Offset(1.6, 2.8), blurRadius: 3.0, spreadRadius: 0.8, blurStyle: BlurStyle.normal)],
//     ),
//     child: Row(
//       children: [
//         Expanded(flex: 1, child: CircleAvatar(child: Text(widget.chacecomItemsList[i].label[0]))
//             // child: Image(image: AssetImage("images/chacecomlogo.png"), height: 50.0),
//             ),
//         const Padding(padding: EdgeInsets.only(left: 3.0)),
//         Expanded(
//             flex: 3,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(widget.chacecomItemsList[i].label.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, height: 1.0)),
//                 Text(widget.chacecomItemsList[i].description, style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: Colors.black38, fontSize: 11))
//               ],
//             )),
//         const Padding(padding: EdgeInsets.only(left: 5.0)),
//         Expanded(flex: 2, child: Text("${widget.chacecomItemsList[i].price.toString()} XAF")),
//         Expanded(
//             flex: 1,
//             child: IconButton(
//               icon: const Icon(Icons.visibility, size: 25.0),
//               style: const ButtonStyle(
//                 iconColor: MaterialStatePropertyAll(Colors.redAccent),
//               ),
//               onPressed: () => {},
//             ))
//       ],
//     ),
//   );
// }
}
