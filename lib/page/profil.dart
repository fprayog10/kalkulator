import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tugas04_pemrograman_mobile/main.dart';
import 'package:tugas04_pemrograman_mobile/page/segitiga.dart';

import 'ketupat.dart';
import 'layang.dart';
import 'lingkaran.dart';

class ProfilPage extends StatelessWidget {
  final double coverHeight = 200;
  final double profileHeight = 165;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 1.5;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
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
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          biodata(),
          email(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset('assets/images/esgul.jpg'),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 1.8,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('assets/images/profil.jpg'),
      );

  Widget biodata() => Column(
        children: [
          const SizedBox(height: 1),
          Text(
            'Firlan Prayoga',
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            '20190801120',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 18,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 5),
          Text(
            'Halo perkenalkan nama saya Firlan Prayoga, saya merupakan mahasiswa semester 6 di Universitas Esa Unggul kampus Citra Raya. Hubungi saya melalui email dibawah ini. Terimakasih :).  ',
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 18,
              height: 1.5,
              color: Colors.white,
            ),
          )
        ],
      );

  Widget email() => Card(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.email,
            color: Colors.teal,
          ),
          title: Text('firlan.prayoga10@gmail.com'),
        ),
      );
}
