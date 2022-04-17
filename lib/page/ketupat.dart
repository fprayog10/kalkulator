// ignore_for_file: deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tugas04_pemrograman_mobile/main.dart';
import 'package:tugas04_pemrograman_mobile/page/profil.dart';
import 'package:tugas04_pemrograman_mobile/page/segitiga.dart';

import 'layang.dart';
import 'lingkaran.dart';

class ketupat extends StatelessWidget {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  TextEditingController _tot = TextEditingController();
  late double result;
  late double sum;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Luas Belah Ketupat"),
        ),
        backgroundColor: Color.fromARGB(218, 57, 127, 207),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 190,
                color: Color.fromARGB(218, 57, 127, 207),
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/images/profil.jpg'),
                ),
              ),
              Text(
                "Firlan Prayoga",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "20190801120",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.home_filled,
                  color: Color.fromARGB(255, 173, 29, 29),
                  size: 45,
                ),
                title: Text(
                  "Homepage",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ProfilPage(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.account_circle_sharp,
                  color: Color.fromARGB(255, 173, 29, 29),
                  size: 45,
                ),
                title: Text(
                  "Profil",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => segitiga(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.calculate,
                  color: Color.fromARGB(255, 173, 29, 29),
                  size: 45,
                ),
                title: Text(
                  "Segitiga",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => lingkaran(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.add_circle_outline_rounded,
                  color: Color.fromARGB(255, 173, 29, 29),
                  size: 45,
                ),
                title: Text(
                  "Lingkaran",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => layang(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.calculate_rounded,
                  color: Color.fromARGB(255, 173, 29, 29),
                  size: 45,
                ),
                title: Text(
                  "Layang-Layang",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ketupat(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.add_circle_outline_rounded,
                  color: Color.fromARGB(255, 173, 29, 29),
                  size: 45,
                ),
                title: Text(
                  "Belah Ketupat",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Copyright © 2022'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Firlan Prayoga'),
                    TypewriterAnimatedText('Universitas Esa Unggul'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Text("Menghitung Luas Belah Ketupat",
                    style: TextStyle(fontSize: 25, color: Colors.white)),
                SizedBox(
                  height: 5,
                ),
                Text("Rumus : D1 * D2 / 2",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _num1,
                  decoration: InputDecoration(
                      labelText: "Diagonal 1",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _num2,
                  decoration: InputDecoration(
                      labelText: "Diagonal 2",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    sum =
                        double.parse(_num1.text) * double.parse(_num2.text) / 2;
                    result = sum;
                    _tot.text = result.toString();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height / 14,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 76, 64),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Hitung",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _tot,
                  decoration: InputDecoration(
                      labelText: "Hasil",
                      labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  enabled: false,
                ),
                SizedBox(
                  height: 25,
                ),
                Image.asset(
                  'assets/images/ketupat.jpg',
                  width: 150,
                ),
              ],
            ),
          ),
        ));
  }
}
