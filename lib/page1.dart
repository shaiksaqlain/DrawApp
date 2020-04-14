import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  Home(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:Center(
        child: Text(title),
      ),
    );
  }
}
