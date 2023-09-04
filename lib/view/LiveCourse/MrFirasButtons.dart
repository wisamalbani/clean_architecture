import 'package:flutter/material.dart';

class  ButtonsTest extends StatefulWidget {
  const ButtonsTest({super.key});

  @override
  State<ButtonsTest> createState() => _ButtonsTestState();
}

class _ButtonsTestState extends State<ButtonsTest> {
  bool isDisiable1 = false ;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: Center(

                  child:ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(300, 60),
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        elevation: 0,
                        shadowColor: Colors.black26,
                        textStyle: const TextStyle(color: Colors.white,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))

                    ), child: const Text('Center'),

                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Center(

                  child:ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        isDisiable1 = true ;
                      });

                      print("11111");
                    },
                    label: const Text('Center'),
                    icon: const Icon(Icons.add_to_drive,color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        elevation: 100,
                        shadowColor: Colors.black26,
                        textStyle: const TextStyle(color: Colors.white),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                    ),

                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Center(
                  child:MaterialButton(
                    onPressed: isDisiable1 == true ? null : (){},
                    elevation: 100,
                    splashColor: Colors.red,hoverColor: Colors.blue,disabledColor: Colors.grey,
                    textColor: Colors.green,

                    // color: Colors.white,
                    child: const Text('center'),

                  )
              ),
            ),

            Container(
              padding: const EdgeInsets.all(30),
              child: Center(
                  child:IconButton(
                    iconSize: 20,
                    onPressed: () {  },
                    icon: const Icon(Icons.person),
                    color: Colors.green,
                    splashColor: Colors.blue,


                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Center(
                  child:InkWell(
                    onTap: () {
                      print("1111111");
                    },
                    onHover:(value) {


                    },

                    splashColor: Colors.black26,
                    hoverColor: Colors.green,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset("image/goole.png",),
                    ),

                  )
              ),
            )
          ],
        )
    );
  }
}
