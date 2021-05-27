import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/transaction_tab/transaction_history_list_item.dart';
import 'package:flutter_top_tipper/screens/dashBoard/transaction_tab/transaction_history_pop_up.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

import '../../no_data_screen.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key key}) : super(key: key);

  @override
  _TransactionHistoryScreenState createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  List<String> mItemList = ["1", "2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: TextWidget(
            text: AppStringConstants.TRANSACTION_HISTORY,
            textSize: 18.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: mItemList.isEmpty
            ? NoDataScreen(
                imagePath: "ic_piggy.png", text: "No transaction history yet!")
            : ListView.builder(
                itemCount: mItemList.length,
                itemBuilder: (BuildContext context, int index) {
                  return TransactionHistoryListItem(onTap: (){
                    showDialog(context: context, builder: (context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: TransactionHistoryPopUp(),
                      );
                    });
                  },
                    imagePath: "ic_user_circle.png",
                    name: "JOhn Russell",
                    city: "Los Angeles, California",
                    date: "04 feb, 2021",
                      price: "120.00",
                  );
                }),
      ),
    );
  }
}
