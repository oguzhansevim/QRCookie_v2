import 'package:flutter/material.dart';
import 'package:qrcookie_v2/components/snake_navigation_bar_widget.dart';
import 'package:qrcookie_v2/views/create_qr_view.dart';
import 'package:qrcookie_v2/views/scan_qr_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: CreateQrView(),
        bottomNavigationBar: SnakeNavigationBarWidget(),
      ),
    );
  }
}
