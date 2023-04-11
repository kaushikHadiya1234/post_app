import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sticker_editor/DataModal.dart';

class SimplePost extends StatefulWidget {
  const SimplePost({Key? key}) : super(key: key);

  @override
  State<SimplePost> createState() => _SimplePostState();
}

class _SimplePostState extends State<SimplePost> {

  String? path;
  TextEditingController txtname =TextEditingController();
  TextEditingController txtpro =TextEditingController();
  TextEditingController txtid =TextEditingController();
  TextEditingController txttag =TextEditingController();

  var txtkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                    ),
                    child:path==null?Icon(Icons.person,size: 150,): CircleAvatar(
                      backgroundImage: FileImage(File("$path")),radius: 100,
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            ImagePicker img = ImagePicker();
                            XFile? xfile = await img.pickImage(
                                source: ImageSource.camera);
                            setState(() {
                              path = xfile!.path;
                            });
                          },
                          child: Icon(Icons.camera_alt_outlined)),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          onPressed: () async {
                            ImagePicker img = ImagePicker();
                            XFile? xfile = await img.pickImage(
                                source: ImageSource.gallery) as XFile;
                            setState(() {
                              path = xfile!.path;
                            });
                          },
                          child: Icon(Icons.photo)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Please Enter the Name";
                        }
                      },
                      controller: txtname,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter the Name'
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Please Enter the filed";
                        }
                      },
                      controller: txtpro,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter the filed'
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Please Enter the insta id";
                        }
                      },
                      controller: txtid,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter the insta id'
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Please Enter the tagline";
                        }
                      },
                      controller: txttag,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter the tagline'
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  FloatingActionButton.extended(onPressed: () {
                   if(txtkey.currentState!.validate())
                     {
                       Simple s =Simple(name: txtname.text,filed: txtpro.text,id: txtid.text,tagline: txttag.text,img: path);
                       Navigator.pushNamed(context, 'sp',arguments: s);
                     }
                  },label: Text("Submit"),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
