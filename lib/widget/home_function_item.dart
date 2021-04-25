import 'package:flutter/material.dart';

/// Created by hdyjzgq
/// data on 4/23/21
/// function is ：功能菜单
class HomeFunctionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _columnWidget("image/yuwen.png", "语文"),
          _columnWidget("image/shuxue.png", "数学"),
          _columnWidget("image/yuedu.png", "年级阅读"),
          _columnWidget("image/shetuan.png", "少年文学团")
        ],
      ),

    );
  }

  _columnWidget(String image, String content) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 50,
          height: 50,
        ),
        Text(content)
      ],
    );
  }
}
