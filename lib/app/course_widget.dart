import 'package:flutter/material.dart';

/// Created by hdyjzgq
/// data on 5/19/21
/// function is ：
class CourseWidget extends StatefulWidget {
  @override
  _CourseWidgetState createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget>
    with SingleTickerProviderStateMixin {
  final List<String> barTitles = ['语文', '理数', '英语', '物理', '化学', '生物'];
  final List<String> leftTitle = [
    '技巧卷',
    '试卷1',
    '试卷2',
    '试卷3',
    '试卷4',
    '试卷5',
    '训练卷'
  ];

  //
  late TabController _tabController;

  //
  @override
  void initState() {
    _tabController =
        TabController(length: barTitles.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        title: Text('课程'),
        bottom: TabBar(
          tabs: barTitles.map((e) => Text(e)).toList(),
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          indicatorWeight: 4.0,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelStyle: TextStyle(height: 2),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: barTitles
            .map((e) => Row(
                  children: [_leftView(), _contentView()],
                ))
            .toList(),
      ),
    );
  }

  ///目录list
  _leftView() {
    return Container(
      width: 60,
      child: ListView(
        children: leftTitle
            .map((l) => Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    l,
                  ),
                  height: 40,
                ))
            .toList(),
      ),
    );
  }

  ///详情list
  _contentView() {
    return Expanded(
        child: ListView(
      children: leftTitle
          .map(
            (e) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '教师简介',
                  style: TextStyle(fontSize: 12),
                ),
                Text("张老师"),
                Container(
                  width: 260,
                  height: 140,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2877516247,37083492&fm=26&gp=0.jpg"),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Divider(
                    height: 3,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
          .toList(),
    ));
  }
}
