import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/widget/directory_item.dart';
import 'package:flutter_app/widget/drop_button.dart';
import 'package:flutter_app/widget/home_function_item.dart';
import 'package:flutter_app/widget/view_pager.dart';

class HomeWidget extends StatefulWidget {
  @override
  HomeWidgetState createState() => HomeWidgetState();
}

class HomeWidgetState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("首页"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10.0),
        child: ListView(
          children: [
            ViewPager(),
            DropButton(),
            HomeFunctionItem(),
            projectTitle,
            directoryTitle,
            DirectoryItem(),
            towBanner
          ],
        ),
      ),
    );
  }
}

//专项学习
var projectTitle = Container(
  alignment: Alignment.centerLeft,
  margin: EdgeInsets.only(left: 10, top: 10),
  child: Text(
    "专项学习",
    style: TextStyle(fontSize: 18),
  ),
);

///目录
var directoryTitle = Container(
  height: 40,
  alignment: Alignment.center,
  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
  child: Text('教材课程学习目录'),
  padding: EdgeInsets.symmetric(horizontal: 10),
  decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.green),
);

var towBanner = Container(
  height: 80,
  margin: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Colors.green,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(5))
  ),
);
