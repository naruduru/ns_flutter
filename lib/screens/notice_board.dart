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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          title: const Text('Notice', style: TextStyle(fontWeight: FontWeight.w900),),
          backgroundColor: Colors.white70,
          foregroundColor: Colors.deepPurple
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(4),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            dense:true,
            title: Text(entries[index]),
            subtitle: Text(subEntries[index], style: const TextStyle(fontSize: 12,),),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: entries.length,
      ),
    );
  }
}