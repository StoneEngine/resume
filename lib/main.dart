import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ข้อมูลส่วนตัว  ",
            style: GoogleFonts.prompt(
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/me.jpg"), // รูปพื้นหลัง

                    fit: BoxFit.cover, // ปรับขนาดให้เต็มพื้นที่
                  ),
                  color: Colors.blue, // ถ้ารูปไม่เต็มจะมีสีพื้นหลัง
                  borderRadius: BorderRadius.circular(100), // มุมโค้ง
                  border: Border.all(
                    color: const Color.fromARGB(255, 21, 0, 116), // สีเส้นขอบ
                    width: 2,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                child: Text(
                  "กมลภพ ภูลำพา",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Text(
            "ข้อมูลส่วนตัว",
            style: TextStyle(
              fontSize: 20, // ใหญ่กว่าข้อความปกติ
              fontWeight: FontWeight.bold, // ตัวหนา
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "   ภูมิลำเนา:  จังหวัดพิษณุโลก\n"
            "   งานอดิเรก :  ฟังเพลง, ตีแบด\n"
            "   ประวัติการศึกษา : \n"
            "   ประถม  โรงเรียนบ้านปรางค์ 2560\n"
            "   มัธยมต้น   ชื่อสถานศึกษา 2563\n"
            "   มัธยมปลาย  ชื่อสถานศึกษา 2566",
            style: TextStyle(height: 1.5, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class Data extends StatelessWidget {
  const Data({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
