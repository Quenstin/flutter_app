import 'package:flutter/material.dart';

/// Created by hdyjzgq
/// data on 4/23/21
/// function is ：选择年级
class DropButton extends StatefulWidget {
  DropButton({Key key}) : super(key: key);

  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  var content = '一年级';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      child:  DropdownButton(
        value: content,
        items: [
          DropdownMenuItem(
            child: Text(
              "一年级",
              style: TextStyle(color: Colors.green),
            ),
            value: '一年级',
          ),
          DropdownMenuItem(
            child: Text(
              "二年级",
              style: TextStyle(color: Colors.green),
            ),
            value: '二年级',
          ),
          DropdownMenuItem(
            child: Text(
              "三年级",
              style: TextStyle(color: Colors.green),
            ),
            value: '三年级',
          ),
          DropdownMenuItem(
            child: Text(
              "四年级",
              style: TextStyle(color: Colors.green),
            ),
            value: '四年级',
          ),
        ],
        onChanged: (value) {
          content = value;
        },
      ),
    );
  }
}
