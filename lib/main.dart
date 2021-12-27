import 'package:flutter/material.dart';
import 'package:ns_flutter/screens/home.dart';
import 'package:ns_flutter/screens/notice_board.dart';
import 'package:ns_flutter/screens/my.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    const Home(),
    const NoticeBoard(),
    const My()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xfff53755),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                print('home button is clicked');
              }
          )
        ],
      ),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.grab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xfff53755),
        elevation: 0,
        iconSize: 30,
        selectedFontSize: 15,
        selectedIconTheme: const IconThemeData(color: Color(0xfff4e937), size: 30),
        selectedItemColor: const Color(0xfff4e937),
        unselectedIconTheme: const IconThemeData(color: Color(0xfff9a734),),
        unselectedItemColor: const Color(0xfff9a734),
        unselectedFontSize: 14,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Notice',),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My',),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
