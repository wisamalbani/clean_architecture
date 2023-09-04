import 'dart:ui';





//تنقل بين العناصر

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late PageController pc;
  @override
  void initState(){
    pc = PageController(initialPage: 0,viewportFraction: 0.5) ;
  }
  List images  = [
    
    {"url" : "image/twitter.png"},
    {"url" : "image/facebok.png"},
    {"url" : "image/goole.png"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text('test'),

      ),
      drawer: Drawer(),
      drawerScrimColor: Colors.black.withOpacity(0.5),
      body: Column(
        children: [
          Container(
            height: 300,
            child: PageView.builder(
              reverse: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index){
                print(index);
              },
              controller: pc,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(images[index]['url'],fit: BoxFit.fill,);
              },

            ),

          ),
          MaterialButton(onPressed: (){
            //pc.jumpToPage(2);
            pc.animateToPage(2, duration: Duration(seconds: 1), curve: Curves.easeIn);//smooth going
          },
            child: Text("Go to Page"),)
        ],
      ),//الظل الذي يظهر عند فتح الدرور تابعة لل (scaffold)



    );
  }


}
