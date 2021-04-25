import 'package:flutter/material.dart';

/// Created by hdyjzgq
/// data on 4/23/21
/// function is ：
class DirectoryItem extends StatefulWidget {
  DirectoryItem({Key key}) : super(key: key);

  @override
  _DirectoryItemState createState() => _DirectoryItemState();
}

class _DirectoryItemState extends State<DirectoryItem> {
  _createGridViewItem(String image, String name) {
    return Container(
      height: 40,
      width: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.green,
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            height: 30,
            width: 30,
          ),
          Text(
            name,
          )
        ],
      ),
    );
  }

  _item() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createGridViewItem("image/a.png", "学拼音"),
        _createGridViewItem("image/a.png", "学拼音"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _item(),
        _item(),
        _item(),
      ],
    );
  }
}
