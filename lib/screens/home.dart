import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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

  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xfff53755),
            elevation: 0.0,
            leading: IconButton(
                icon: const Icon(Icons.menu), onPressed: () {  },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.home), onPressed: () {  },
              )
            ],
            centerTitle: true,
            pinned: true,
            expandedHeight: 250.0,
            title: const Text('ns'),
            flexibleSpace:  Stack(children: [
              Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/volvo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
    Positioned(
    top: 90,
    left: 10,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Container(
    margin: const EdgeInsets.all(5),
    width: 40,
    height: 40,
    decoration: const BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
    image: AssetImage('images/logo_icon.png'),
    fit: BoxFit.fill
    ),
    ),
    ),
    Container(
    margin: const EdgeInsets.only(left: 5, top: 10),
    width: 200,
    height: 40,
    child:
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
    Text(
    "니트소프트(NEAT-SOFT)",
    style: TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.bold,
    height: 1.0
    ),
    ),
    SizedBox(height: 3,),
    Text(
    "멤버 14명",
    style: TextStyle(
    color: Colors.white,
    fontSize: 10,
    ),
    ),
    ],
    ),
    )
    ],
    ),
    ),
            ],),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: '전체글',
                ),
                Tab(
                  text: '인기글',
                )
              ],
            ),
          ),
          buildList()
        ],
      ),
    );
  }

  buildList() {
    return SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          dense:true,
          title: Text(entries[index]),
          subtitle: Text(subEntries[index], style: const TextStyle(fontSize: 12,),),
        ), childCount: 40)
    );
  }
}