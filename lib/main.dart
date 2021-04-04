import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'core/base/base_stateful.dart';
import 'pages/history/history.dart';
import 'pages/qr_code_generator/qr_code_generator.dart';
import 'pages/qr_code_scanner/qr_code_scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends BaseStateful<MyApp> {
  final SnakeBarBehaviour _snakeBarStyle = SnakeBarBehaviour.floating;
  final SnakeShape _snakeShape = SnakeShape.circle;

  final ShapeBorder? _bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  final EdgeInsets _padding = const EdgeInsets.all(12);

  final Color _unselectedColor = Colors.blueGrey;

  final bool _showSelectedLabels = false;
  final bool _showUnselectedLabels = false;

  int _selectedItemPosition = 1;

  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner_rounded), label: 'QR Scanner'),
    BottomNavigationBarItem(icon: Icon(Icons.qr_code_rounded), label: 'QR Creator'),
    BottomNavigationBarItem(icon: Icon(Icons.history_rounded), label: 'History'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: Scaffold(
        body: _selectedItemPosition == 0
            ? QrCodeScanner()
            : _selectedItemPosition == 1
                ? QrCodeGenerator()
                : History(),
        bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: _snakeBarStyle,
          snakeShape: _snakeShape,
          shape: _bottomBarShape,
          padding: _padding,
          unselectedItemColor: _unselectedColor,
          showSelectedLabels: _showSelectedLabels,
          showUnselectedLabels: _showUnselectedLabels,
          currentIndex: _selectedItemPosition,
          onTap: (index) => setState(() => {
                _selectedItemPosition = index,
              }),
          items: _bottomNavigationBarItems,
        ),
      ),
    );
  }
}
