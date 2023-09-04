import 'package:flutter/material.dart';

class IconTest extends StatelessWidget {
  const IconTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 250,
                weight: 2,
                shadows: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 140,
                  ),
                ],
              ),
              Divider(
                color: Colors.yellow,
                height: 5,
                thickness: 10,
                indent: 4, //بداية الخط
                endIndent: 40, // نهاية الخط
              ),
              Image.asset(
                "assets/images/wb.jpg",
                width: 100,
                height: 100,
              ),
              Text(
                "recognition",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "BricolageGrotesque-VariableFont_opsz,wdth,wght",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


//خطوات اضافة صور للملف

// 1. انشاء مجلد مستقل نسميه assets
// 2. ننشئ مجلد داخل assets نسميه images
// 3. نضع الصورة المطلوبة داخل مجلد images
// 4. نفتح ملف اسمه pupspec.yaml ونبحث عن كلمة assets بعدها images/a_dot_ham.jpeg
// 5. نفك تعليق سطر assets وسطر images
// 6. نكتب مسار الصورة هنا
// 7. حفظ الملف او  Get Packages



// خطوات اضافة نوع خط جديد تم تحميله من الانترنت

// 1. ضمن مجلد assets الذي أنشأناه سابقا ننشئ مجلد اسمه fonts
// 2. نلصق ملف الخط بصيغة ttf ضمن مجلد fonts
// 3. ضمن ملف pupspec.yaml نبحث عن fonts وبعدها family وهنا نلصق اسم الخط
// 4. بعدها كلمة asset نلص هنا مسار الخط
