import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: ImageWidget(imagePath: "ic_grid.png", width: 30.0, height: 30.0, isFill: false),
          label: "A"
        ),
        BottomNavigationBarItem(
            icon: ImageWidget(imagePath: "ic_transaction.png", width: 20.0, height: 20.0, isFill: true),
            label: "A"
        ),
        BottomNavigationBarItem(
            icon: ImageWidget(imagePath: "ic_chat.png", width: 20.0, height: 20.0, isFill: true),
            label: "A"
        ),
        BottomNavigationBarItem(
            icon: ImageWidget(imagePath: "ic_notifications.png", width: 20.0, height: 20.0, isFill: true),
            label: "A"
        ),
        BottomNavigationBarItem(
            icon: ImageWidget(imagePath: "ic_user_fill.png", width: 20.0, height: 20.0, isFill: true),
            label: "A"
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: orange,
      onTap: _onItemTapped,),
    );
  }
}
