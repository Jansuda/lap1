import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Member Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Colors.orange,
              blocktext: "พรหมพิริยะ พสุชาธัญภักร์",
              imgPath: "assets/กัปตัน.jpg",
              nickname: "Nick: กัปตัน",
              ID: "Student ID: 633410022-5",
              fack: "Fackbook: Prompiriya Phasuchathunyaphat",
              about: "คำอธิบาย: อย่าหยุดเขียนโค้ด"),
          Card(
              context: context,
              color: Colors.orange,
              blocktext: "นครินทร์ ตรีศรี",
              imgPath: "assets/น่าน.jpg",
              nickname: "Nick: น่าน",
              ID: "Student ID: 633410080-1",
              fack: "Fackbook: Nanping Trisi",
              about: "คำอธิบาย: ตั้งใจเล่นเกมส์ สุดๆ"),
          Card(
              context: context,
              color: Colors.orange,
              blocktext: "อนุสรณ์ สิงห์งาม",
              imgPath: "assets/พี่โมด.jpg",
              nickname: "Nick: โมด",
              ID: "Student ID: 633410037-2",
              fack: "Fackbook: Esom Esom",
              about: "คำอธิบาย: ไม่มีคำอธิบาย."),
          Card(
              context: context,
              color: Colors.orange,
              blocktext: "จันร์สุดา คณะวาปี",
              imgPath: "assets/จันทร์เจ้า.jpg",
              nickname: "Nick: จันทร์เจ้า",
              ID: "Student ID: 633410075-4",
              fack: "Fackbook: Jansuda kanawapee",
              about: "คำอธิบาย: เลิกง่วงได้แล้ว"),
        ],
      ),
    );
  }

  Widget Card(
      //กำหนดค่าที่ใช้รับในการส่ง
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgPath,
      required String nickname,
      required String ID,
      required String fack,
      required String about}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        //กำหนดค่าที่ใช้ส่ง
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                        Fackbook: fack,
                        About: about,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(imgPath)),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              //margin: EdgeInsets.all(10),
              color: color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(blocktext),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.Nickname,
      required this.imPath,
      required this.id,
      required this.Fackbook,
      required this.About});
  String name;
  String Nickname;
  String imPath;
  String id;
  String Fackbook;
  String About;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Member"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(id),
              Text(Nickname),
              Text(Fackbook),
              Text(About),
            ],
          ),
        ));
  }
}