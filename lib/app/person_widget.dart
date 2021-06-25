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
    '每天一到热门题',
    '产品勘误表',
    '我的答案'
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
                icon: Icons.video_settings,
                title: "视频管理",
              ),
            );
          }, childCount: 7),
        )
      ],
    );
    // return ListView(
    //   children: [
    //     Container(
    //       height: 200,
    //       alignment: Alignment.center,
    //       color: Colors.brown,
    //       child: ListTile(
    //         leading: Container(
    //           height: 100,
    //           width: 100,
    //           decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             image: DecorationImage(
    //                 image: AssetImage("image/yuwen.png"), fit: BoxFit.contain),
    //           ),
    //         ),
    //         title: Text("NewFlutter"),
    //         subtitle: Text(
    //             "If you want to see a thousand miles, go to the next level"),
    //       ),
    //     ),
    //   ListItems(icon: Icons.video_settings,title: "视频管理",),
    //   ListItems(icon: Icons.upload_sharp,title: "上传视频",),
    //   ListItems(icon: Icons.history,title: "播放记录",),
    //   ListItems(icon: Icons.account_balance_wallet,title: "考前猜题",),
    //   ListItems(icon: Icons.looks_one_rounded,title: "每天一到热门题",),
    //   ListItems(icon: Icons.error_outline_outlined,title: "产品勘误表",),
    //   ListItems(icon: Icons.my_library_add,title: "我的答案",),
    //
    //   ],
    // );
  }
}
