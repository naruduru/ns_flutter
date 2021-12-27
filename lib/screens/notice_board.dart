import 'package:flutter/material.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  _NoticeBoardState createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  final List<String> entries = <String>[
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
    '가마보코 내년에 살수있을까요??',
    '조용한 시간에~~짬짜미..',
    '가마보코3m 폴대문의',
    '원터치 TC타프 사용하시는 회원분들께 질문 드립니다',
    '안녕하세요!',
  ];

  final List<String> subEntries = <String>[
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
    '김남수탁구클럽  16:38  조회 28',
    '인디안39  16:05  조회 39',
    '쓰빠이끄  15:58  조회 77',
    '웅골  15:19  조회 29',
    '오니파파파  14:14  조회4',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              title: Text('NsBar'),
              centerTitle: true,
              bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 5,
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: 'Home'),
                    Tab(icon: Icon(Icons.list_alt), text: 'Feed'),
                    Tab(icon: Icon(Icons.person), text: 'Profile'),
                    Tab(icon: Icon(Icons.settings), text: 'Settings'),
                  ]
              ),
            ),
          ],
          body: ListView.separated(itemBuilder: (context, index) => const ListTile(title : Text('test')), separatorBuilder: (context, index) => const SizedBox(height: 12,), itemCount: 25),
        )
      )
    );
    // return Scaffold(
    //   body: CustomScrollView(
    //     slivers: <Widget>[
    //       const SliverAppBar(
    //         backgroundColor: Color(0xfff53755),
    //         floating: false,
    //         pinned: false,
    //         snap: false,
    //         expandedHeight: 100.0,
    //         flexibleSpace: FlexibleSpaceBar(
    //           title: Text("니트"),
    //           background: Image(image: AssetImage('images/logo.png')),
    //         ),
    //       ),
    //       SliverList(delegate: SliverChildBuilderDelegate(
    //               (context, index) => ListTile(
    //                 contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
    //                 dense:true,
    //                 title: Text(entries[index]),
    //                 subtitle: Text(subEntries[index], style: const TextStyle(fontSize: 12,),),
    //               ), childCount: 20),
    //       ),
    //     ],
    //   )
    //   // body: ListView.separated(
    //   //   padding: const EdgeInsets.all(4),
    //   //   itemBuilder: (BuildContext context, int index) {
    //   //     return ListTile(
    //   //       contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
    //   //       dense:true,
    //   //       title: Text(entries[index]),
    //   //       subtitle: Text(subEntries[index], style: const TextStyle(fontSize: 12,),),
    //   //     );
    //   //   },
    //   //   separatorBuilder: (BuildContext context, int index) => const Divider(),
    //   //   itemCount: entries.length,
    //   // ),
    // );
  }
}