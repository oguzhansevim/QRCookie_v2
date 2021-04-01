import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class SnakeNavigationBarWidget extends StatefulWidget {
  @override
  _SnakeNavigationBarWidgetState createState() => _SnakeNavigationBarWidgetState();
}

class _SnakeNavigationBarWidgetState extends State<SnakeNavigationBarWidget> {
  SnakeBarBehaviour _snakeBarStyle = SnakeBarBehaviour.floating;
  SnakeShape _snakeShape = SnakeShape.circle;

  ShapeBorder? _bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  EdgeInsets _padding = const EdgeInsets.all(12);

  Color _unselectedColor = Colors.blueGrey;

  bool _showSelectedLabels = false;
  bool _showUnselectedLabels = false;

  int _selectedItemPosition = 1;

  List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner_rounded), label: 'QR Scanner'),
    BottomNavigationBarItem(icon: Icon(Icons.qr_code_rounded), label: 'QR Creator'),
    BottomNavigationBarItem(icon: Icon(Icons.history_rounded), label: 'History'),
  ];

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      behaviour: _snakeBarStyle,
      snakeShape: _snakeShape,
      shape: _bottomBarShape,
      padding: _padding,
      unselectedItemColor: _unselectedColor,
      showSelectedLabels: _showSelectedLabels,
      showUnselectedLabels: _showUnselectedLabels,
      currentIndex: _selectedItemPosition,
      onTap: (index) => setState(() => _selectedItemPosition = index),
      items: _bottomNavigationBarItems,
    );
  }
}
