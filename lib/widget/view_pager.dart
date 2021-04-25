import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Created by hdyjzgq
/// data on 4/22/21
/// function is ：自定义viewpager
class ViewPager extends StatefulWidget {
  ViewPager({Key key}) : super(key: key);

  @override
  _ViewPagerState createState() => _ViewPagerState();
}

class _ViewPagerState extends State<ViewPager> {
  var imgList = [
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2877516247,37083492&fm=26&gp=0.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2877516247,37083492&fm=26&gp=0.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2877516247,37083492&fm=26&gp=0.jpg',
  ];

  PageController _pageController;
  var currPagerValue = 0.0;
  double _scaleFactor = .8;
  double height = 180.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.9);
    _pageController.addListener(() {
      setState(() {
        currPagerValue = _pageController.page;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: PageView.builder(
        itemBuilder: (context, index) => _itemBuilder(index),
        itemCount: 10,
        controller: _pageController,
      ),
    );
  }

  _itemBuilder(int index) {
    Matrix4 matrix4 = Matrix4.identity();
    if (index == currPagerValue.floor()) {
      var currScale = 1 - (currPagerValue - index) * (1 - _scaleFactor);
      var currTrans = height * (1 - currScale) / 2;

      matrix4 = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0.0, currTrans, 0.0);
    } else if (index == currPagerValue.floor() + 1) {
      var currScale =
          _scaleFactor + (currPagerValue - index + 1) * (1 - _scaleFactor);
      var currTrans = height * (1 - currScale) / 2;

      matrix4 = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0.0, currTrans, 0.0);
    } else if (index == currPagerValue.floor() - 1) {
      var currScale = 1 - (currPagerValue - index) * (1 - _scaleFactor);
      var currTrans = height * (1 - currScale) / 2;

      matrix4 = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0.0, currTrans, 0.0);
    } else {
      matrix4 = Matrix4.diagonal3Values(1.0, _scaleFactor, 1.0)
        ..setTranslationRaw(0.0, height * (1 - _scaleFactor) / 2, 0.0);
    }

    return Transform(
      transform: matrix4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: NetworkImage(imgList[index % 2]), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
