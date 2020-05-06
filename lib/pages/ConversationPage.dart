import 'package:flutter/material.dart';
import 'package:flutterdemo/widgets/ChatAppBar.dart';
import 'package:flutterdemo/widgets/ChatListWidget.dart';
import 'package:flutterdemo/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(),
        body: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              ChatListWidget(),
              InputWidget()
            ],
          )
        ],)
      )
    );
  }
}