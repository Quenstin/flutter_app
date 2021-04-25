import 'package:flutter/material.dart';

import 'home_widget.dart';

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State {
  var currentIndex = 0;
  var pages = [HomeWidget(), HomeWidget(), HomeWidget()];

  var _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (BuildContext context, int dex) {
          return pages.elementAt(currentIndex);
        },
        controller: _pageController,
        itemCount: pages.length,
        onPageChanged: _changeIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_outlined),
              label: "首页"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              activeIcon: Icon(Icons.book_outlined),
              label: "课程"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person_outline),
              label: "我的"),
        ],
      ),
    );
  }

  void _changeIndex(int dex) {
    setState(() {
      if (currentIndex != dex) {
        currentIndex = dex;
      }
    });
  }

  void _onItemTapped(int index) {
    //bottomNavigationBar 和 PageView 关联
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
}
