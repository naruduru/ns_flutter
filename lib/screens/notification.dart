import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('noti'),
      ),
      body: const Center(
        child: Icon(
          Icons.notifications_active,
          size: 150,
        ),
      ),
    );
  }
}