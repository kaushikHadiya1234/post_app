import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Select",style: TextStyle(color: Colors.white,fontSize: 30),),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.pushNamed(context, 'simple');
              },child: ui('simple')),
              SizedBox(height: 30),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'mart');
                  },child: ui('Digital Marketing')),
              SizedBox(height: 30),
              InkWell(onTap: () {
                Navigator.pushNamed(context, 'story');
              },child: ui('Insta Story')),
            ],
          ),
        ),
      ),
    );
  }
  Widget ui(String name)
  {
    return Container(
      height: 60,
      width: 265,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomRight:Radius.circular(100) )
      ),
      child: Container(
        height: 60,
        width: 250,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomRight:Radius.circular(100) )
        ),
        child: Text("$name",style: TextStyle(
            fontSize: 30,color: Colors.blue,fontFamily: "Font1"
        ),),
      ),
    );
  }
}
