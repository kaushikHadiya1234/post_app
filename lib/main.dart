import 'package:flutter/material.dart';
import 'package:sticker_editor/Digital_Marketing/Digital_Marketing.dart';
import 'package:sticker_editor/Digital_Marketing/Dm_post.dart';
import 'package:sticker_editor/Home_Screen.dart';
import 'package:sticker_editor/Insta_Story/Story_Creater.dart';
import 'package:sticker_editor/SP_Post.dart';
import 'package:sticker_editor/simple_post.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        '/':(context) => HomeScreen(),
        'mart':(context) => DigitalMart(),
        'dm':(context) => DMPost(),
        'story':(context) => Story(),
        'simple':(context) => SimplePost(),
        'sp':(context) => SpPost(),
      },
    ),
  );
}
