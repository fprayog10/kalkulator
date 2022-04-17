import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tugas04_pemrograman_mobile/page/ketupat.dart';
import 'package:tugas04_pemrograman_mobile/page/layang.dart';
import 'package:tugas04_pemrograman_mobile/page/lingkaran.dart';

import 'page/segitiga.dart';
import 'page/profil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Homepage"),
        ),
        backgroundColor: Color.fromARGB(218, 149, 199, 255),
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
                SizedBox(
                  height: 15,
                ),
                Image.asset('assets/images/logo.png'),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 50.0,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('Halo!'),
                      RotateAnimatedText('Selamat Datang'),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
