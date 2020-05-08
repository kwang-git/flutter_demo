import 'package:flutter/material.dart';
import 'package:flutterdemo/config/Palette.dart';
import 'package:flutterdemo/pages/ConversationBottomSheet.dart';
import 'package:flutterdemo/widgets/ChatAppBar.dart';
import 'package:flutterdemo/widgets/ChatListWidget.dart';
import 'package:flutterdemo/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
  const ConversationPage();

}

class _ConversationPageState extends State<ConversationPage>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: ChatAppBar(),
        body: Container(
          color: Palette.chatBackgroundColor,
          child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                GestureDetector(
                  child: InputWidget(),
                    onPanUpdate: (details){
                      if(details.delta.dy < 0){
                        _scaffoldKey.currentState
                            .showBottomSheet<Null>((BuildContext context) {
                          return ConversationBottomSheet();
                        });
                      }
                    }
                )

              ],
            )
          ],),
        )
      )
    );
  }
}