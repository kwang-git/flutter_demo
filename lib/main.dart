import 'package:flutter/material.dart';
import 'config/Palette.dart';
import 'pages/ConversationPageSlide.dart';

void main() => runApp(Messio());

class Messio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Palette.primaryColor,
      ),
      home: ConversationPageSlide(),
    );
  }
}

