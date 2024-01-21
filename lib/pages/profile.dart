import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2110020064/pages/sports.dart';
import 'package:news_app_2110020064/tampilan/homepage.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeScreen()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'My Profil',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Muhamad Bagus Bijaksana',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '2110020064',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari Banjarmasin',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Saya adalah Mahasiswa Prodi Sistem Informasi,',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'dari kelas 5A Reg Pagi Banjarmasin',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Kontak :',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '08115009030',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'bagusvirgo13@gmail.com',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Jl. Merpati Komplek Beruntung Jaya No.02 Rt.06 Rw.01',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}