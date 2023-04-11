import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:sticker_editor/DataModal.dart';

class SpPost extends StatefulWidget {
  const SpPost({Key? key}) : super(key: key);

  @override
  State<SpPost> createState() => _SpPostState();
}

class _SpPostState extends State<SpPost> {
  Color? c1;
  Color? c2;
  Color? c3;
  Color? c4;

  String? f1;
  String? f2;
  String? f3;
  String? f4;

  double s1=15;
  double s2=15;
  double s3=15;
  double s4=15;

  List<Color> color = [
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.amber,
    Colors.orange,
    Colors.indigo,
    Colors.yellow,
    Colors.pink,
    Colors.purple,
    Colors.cyan,
    Colors.teal,
    Colors.brown,
    Colors.red,
  ];

  List FontList = [
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
    'Font11',
  ];
  GlobalKey _globalKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    Simple s = ModalRoute.of(context)!.settings.arguments as Simple;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            "Post",
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            IconButton(onPressed: () async {
              RenderRepaintBoundary boundary =  _globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
              var image = await boundary.toImage();
              ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
              Uint8List uint8List = byteData!.buffer.asUint8List();
              print(uint8List);

              await ImageGallerySaver.saveImage(uint8List);


            }, icon: Icon(Icons.download))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              RepaintBoundary(
                key: _globalKey,
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment(0.03,-0.5),
                        child: Container(
                          height: 270,
                          width: 270,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,color: Colors.blue
                          ),
                          child: CircleAvatar(
                            backgroundImage: FileImage(File("${s.img}")),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 400,
                      child: Image.asset('assets/images/simple.png',fit: BoxFit.fill,),
                    ),
                    Container(
                      height: 400,width: double.infinity,
                        alignment: Alignment(0,0.4),
                        child: Text(
                          '${s.name}',
                          style: TextStyle(fontSize: s1, color: c1,fontFamily: f1),
                        )),
                    Container(
                      height: 400,width: double.infinity,
                        alignment: Alignment(0,0.6),
                        child: Text(
                          '${s.filed}',
                          style: TextStyle(fontSize: s2, color:c2,fontFamily: f2),
                        )),
                    Container(
                      height: 400,width: double.infinity,
                        alignment: Alignment(0.6,-0.98),
                        child: Text(
                          '${s.id}',
                          style: TextStyle(fontSize: s3, color: c3,fontFamily: f3),
                        )),
                    Container(
                      height: 400,width: double.infinity,
                        alignment: Alignment(0,0.85),
                        child: Text(
                          '${s.tagline}',
                          style: TextStyle(fontSize: s4, color: c4,fontFamily: f4),
                        )),
                  ],
                ),
              ),
             ExpansionTile(title: Text("Change Color"),children: [
               Text("Name Color",style: TextStyle(fontSize: 15,color: Colors.blue),),
               SizedBox(
                 height: 70,
                 child: ListView.builder(
                   itemBuilder: (context, index) {
                     return InkWell(
                         onTap: () {
                           setState(() {
                             c1 = color[index];
                           });
                         },
                         child: Container(
                           height: 50,
                           width: 50,
                           margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: color[index],
                           ),
                         ));
                   },
                   itemCount: color.length,
                   scrollDirection: Axis.horizontal,
                 ),
               ),
               Text("Filed Color",style: TextStyle(fontSize: 15,color: Colors.blue),),
               SizedBox(
                 height: 70,
                 child: ListView.builder(
                   itemBuilder: (context, index) {
                     return InkWell(
                         onTap: () {
                           setState(() {
                             c2 = color[index];
                           });
                         },
                         child: Container(
                           height: 50,
                           width: 50,
                           margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: color[index],
                           ),
                         ));
                   },
                   itemCount: color.length,
                   scrollDirection: Axis.horizontal,
                 ),
               ),
               Text("Id Color",style: TextStyle(fontSize: 15,color: Colors.blue),),
               SizedBox(
                 height: 70,
                 child: ListView.builder(
                   itemBuilder: (context, index) {
                     return InkWell(
                         onTap: () {
                           setState(() {
                             c3 = color[index];
                           });
                         },
                         child: Container(
                           height: 50,
                           width: 50,
                           margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: color[index],
                           ),
                         ));
                   },
                   itemCount: color.length,
                   scrollDirection: Axis.horizontal,
                 ),
               ),
               Text("Tagline Color",style: TextStyle(fontSize: 15,color: Colors.blue),),
               SizedBox(
                 height: 70,
                 child: ListView.builder(
                   itemBuilder: (context, index) {
                     return InkWell(
                         onTap: () {
                           setState(() {
                             c4 = color[index];
                           });
                         },
                         child: Container(
                           height: 50,
                           width: 50,
                           margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: color[index],
                           ),
                         ));
                   },
                   itemCount: color.length,
                   scrollDirection: Axis.horizontal,
                 ),
               ),
             ],
             ),
              ExpansionTile(title: Text("Fonts style"),
              children: [
                Text("Name Style",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              f1 = FontList[index];
                            });
                          },
                          child: Container(
                              height: 50,
                              margin: EdgeInsets.all(10),
                              child: Text("${FontList[index]}",style: TextStyle(fontFamily: FontList[index]),)));
                    },
                    itemCount: FontList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Text("Filed Style",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              f2 = FontList[index];
                            });
                          },
                          child: Container(
                              height: 50,
                              margin: EdgeInsets.all(10),
                              child: Text("${FontList[index]}",style: TextStyle(fontFamily: FontList[index]),)));
                    },
                    itemCount: FontList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Text("Id Style",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              f3 = FontList[index];
                            });
                          },
                          child: Container(
                              height: 50,
                              margin: EdgeInsets.all(10),
                              child: Text("${FontList[index]}",style: TextStyle(fontFamily: FontList[index]),)));
                    },
                    itemCount: FontList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Text("Tagline Style",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              f4 = FontList[index];
                            });
                          },
                          child: Container(
                              height: 50,
                              margin: EdgeInsets.all(10),
                              child: Text("${FontList[index]}",style: TextStyle(fontFamily: FontList[index]),)));
                    },
                    itemCount: FontList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
              ),
              ExpansionTile(title: Text("Change Font Size"),children: [
                Text("Name Size",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: Slider(
                    value: s1,
                    label: "$s1",
                    min: 15,
                    max: 30,
                    divisions: 10,
                    onChanged: (value) {
                      setState(() {
                        s1 = value;
                      });
                    },
                  ),
                ),
                Text("Filed Style",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: Slider(
                    value: s2,
                    label: "$s2",
                    min: 15,
                    max: 30,
                    divisions: 10,
                    onChanged: (value) {
                      setState(() {
                        s2 = value;
                      });
                    },
                  ),
                ),
                Text("Id Style",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: Slider(
                    value: s3,
                    label: "$s3",
                    min: 15,
                    max: 30,
                    divisions: 10,
                    onChanged: (value) {
                      setState(() {
                        s3 = value;
                      });
                    },
                  ),
                ),
                Text("Tagline Style",style: TextStyle(fontSize: 15,color: Colors.blue),),
                SizedBox(
                  height: 50,
                  child: Slider(
                    value: s4,
                    label: "$s4",
                    min: 15,
                    max: 30,
                    divisions: 10,
                    onChanged: (value) {
                      setState(() {
                        s4 = value;
                      });
                    },
                  ),
                ),
              ],)

            ],
          ),
        ),
      ),
    );
  }
}
