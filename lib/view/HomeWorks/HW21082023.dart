import 'package:flutter/material.dart';

class HW21082023 extends StatelessWidget {
  const HW21082023({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[350],
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15),

            /// العمود الاساسي يلي فيه كل الواجهة
            child: Column(
              children: [
                /// المحتويات فوق العمود الاخضر
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Your Balance",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "\$1,700.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.green[700],
                      size: 50,
                    ),
                  ],
                ),

                ///نهاية المحتويات فوق العمود الاخضر

                /// بداية المربع الاخضر
                Container(
                  width: 350,
                  height: 250,
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green[700],
                  ),

                  /// بداية الكتابة داخل المربع الاخضر
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Buy Orange 10 Kg",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Get discount 25%",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      /// نهاية الكتابة داخل المربع الاخضر
                    ],
                  ),
                ),

                /// نهاية المربع الاخضر

                ///بداية  سطر بين المربع الاخضر والايقونات
                Row(
                  children: [
                    Text(
                      "For You",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                ///نهاية  سطر بين المربع الاخضر والايقونات

                /// بداية الايقونات الـ 4
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// بداية محتويات المربع الابيض 1
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/fruit.png",
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Fruit",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// نهاية محتويات المربيع الابيض 1

                    /// بداية محتويات المربيع الابيض 2
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/vegetable.png",
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Vegetable",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                /// نهاية محتويات المربيع الابيض 2

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// بداية محتويات المربيع الابيض 3
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/cookies.png",
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Cookies",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// نهاية محتويات المربيع الابيض 3

                    ///  بداية محتويات المربيع الابيض 4
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/meat.png",
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Meat",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// نهاية محتويات المربيع الابيض 4
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
