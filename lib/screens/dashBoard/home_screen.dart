import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/chat_tab/recent_chat_list.dart';
import 'package:flutter_top_tipper/screens/dashBoard/notification_tab/notification_screen.dart';
import 'package:flutter_top_tipper/screens/dashBoard/transaction_tab/transaction_history_screen.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _bodyWidgetsList = [
    NotificationTabScreen(),
    TransactionHistoryScreen(),
    RecentChatList(),
    NotificationTabScreen(),
    TransactionHistoryScreen()
  ];

  void _onItemTapped(int index) {
    print("$index");
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_grid.png",
                  width: 30.0,
                  height: 30.0,
                  isFill: false),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_transaction.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_chat.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_notifications.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_user_fill.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true),
              label: ""),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: orange,
        onTap: _onItemTapped,
      ),
      body: _bodyWidgetsList[_selectedIndex],
    );
  }
}
