import 'package:flutter/material.dart';
import 'package:flutter_app/app/list_items.dart';

/// Created by hdyjzgq
/// data on 4/22/21
/// function is ：

class PersonWidget extends StatelessWidget {
  List<String> data = [
    '视频管理',
    '上传视频',
    '播放记录',
    '考前猜题',
    '每天热门题',
    '产品勘误表',
    '我的答案',
    '收藏管理',
    '我的评论',
    '我喜欢的'
  ];

  List<IconData> icons = [
    Icons.account_balance_wallet,
    Icons.upload_sharp,
    Icons.history,
    Icons.hot_tub,
    Icons.one_k,
    Icons.tab,
    Icons.code,
    Icons.star,
    Icons.compare,
    Icons.live_tv
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 220,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground
            ],
            title: Text('NewFlutter'),
            background: Image.network(
              "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2877516247,37083492&fm=26&gp=0.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 50,
              child: ListItems(
                icon: icons[index],
                title: data[index],
              ),
            );
          }, childCount: data.length),
        )
      ],
    );
  }
}
