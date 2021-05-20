import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

class NationWideLeaderBoard extends StatefulWidget {
  const NationWideLeaderBoard({Key key}) : super(key: key);

  @override
  _NationWideLeaderBoardState createState() => _NationWideLeaderBoardState();
}

class _NationWideLeaderBoardState extends State<NationWideLeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageWidget(imagePath: "bg_leader_board.png", width: double.infinity, height: double.infinity, isFill: true),
        ],
      ),
    );
  }
}
