import 'package:flutter/material.dart';

/// Created by hdyjzgq
/// data on 5/17/21
/// function is ：
class ListItems extends StatelessWidget {
  final IconData icon;
  final String title;

  ListItems({ Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left:15,right: 8),
                child: Icon(icon),
              ),
              Expanded(
                  child: Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.black),
              )),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                  size: 12,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            color: Colors.brown,
          ),
        ),
      ],
    );
  }
}
