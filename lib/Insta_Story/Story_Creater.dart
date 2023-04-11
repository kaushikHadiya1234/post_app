import 'package:flutter/material.dart';
import 'package:stories_editor/stories_editor.dart';

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  List<Color> colorList = [
    Colors.deepOrange,
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.brown,
    Colors.blueGrey,
    Colors.indigo,
    Colors.cyan,
    Colors.teal,
    Colors.yellow,
    Colors.grey,
    Colors.green,
    Colors.lightGreen,
    Colors.pink,
    Colors.purple,
    Colors.white,
  ];

  List<List<Color>> GrediantList = [
    [ Colors.deepOrange, Colors.amber,],
    [Colors.red, Colors.blue,],
    [Colors.cyan, Colors.teal,],
    [ Colors.pink, Colors.purple,],
    [ Colors.green, Colors.lightGreen,],
    [ Colors.amber, Colors.red,]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: StoriesEditor(
        giphyKey: 'C4dMA7Q19nqEGdpfj82T8ssbOeZIylD4',
        colorList: colorList,
        fontFamilyList: [
          'Font1',
          'Font2',
          'Font3',
          'Font4',
          'Font5',
          'Font6',
          'Font7',
          'Font8',
          'Font9',
          'Font10',
          'Font11',],
        gradientColors: GrediantList,
        onDone: (String) {},
      )),
    );
  }
}
