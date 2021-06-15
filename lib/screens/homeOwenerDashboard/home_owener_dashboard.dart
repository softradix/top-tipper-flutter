import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/chat_tab/recent_chat_list.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_sceen.dart';
import 'package:flutter_top_tipper/screens/dashBoard/notification_tab/notification_screen.dart';
import 'package:flutter_top_tipper/screens/dashBoard/profile_tab/profile_screen.dart';
import 'package:flutter_top_tipper/screens/dashBoard/transaction_tab/transaction_history_screen.dart';
import 'package:flutter_top_tipper/screens/homeOwenerDashboard/sendTip/SendTipScreen.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

class HomeOwenerDashBoardScreen extends StatefulWidget {
  const HomeOwenerDashBoardScreen({Key key}) : super(key: key);

  @override
  _HomeOwenerDashBoardScreenState createState() => _HomeOwenerDashBoardScreenState();
}

class _HomeOwenerDashBoardScreenState extends State<HomeOwenerDashBoardScreen> {
  int _selectedIndex = 0;
  List<Widget> _bodyWidgetsList = [
    SendTipScreen(),
    TransactionHistoryScreen(),
    RecentChatList(),
    NotificationTabScreen(),
    ProfileScreen()
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
                  width: 20.0,
                  height: 20.0,
                  isFill: false,
              color: _selectedIndex==0?orange:darkGrey,),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_transaction.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true,
                color: _selectedIndex==1?orange:darkGrey,),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_chat.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true,
                  color: _selectedIndex==2?orange:darkGrey),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_notifications.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true,
                  color: _selectedIndex==3?orange:darkGrey),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageWidget(
                  imagePath: "ic_user_fill.png",
                  width: 20.0,
                  height: 20.0,
                  isFill: true,
                  color: _selectedIndex==4?orange:darkGrey),
              label: ""),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: orange,
        onTap: _onItemTapped,
      ),
      body: _bodyWidgetsList[_selectedIndex],
    );
  }
}
