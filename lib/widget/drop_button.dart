import 'package:flutter/material.dart';

/// Created by hdyjzgq
/// data on 4/23/21
/// function is ：选择年级
class DropButton extends StatefulWidget {
  DropButton({Key? key}) : super(key: key);

  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  var content = '一年级';
  List<String> mData = ["一年级", "二年级", "三年级", "四年级"];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      child: DropdownButton(
        value: content,
        items: mData
            .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(color: Colors.green),
                )))
            .toList(),
        onChanged: (String? value) {
          setState(() {
            content = value!;
          });
        },
      ),
    );
  }
}
