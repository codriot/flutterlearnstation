// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterlearnstation/screen/bottombar_calismasi/home_bottombar.dart';
import 'package:flutterlearnstation/screen/bottombar_calismasi/profile_bottombar.dart';
import 'package:flutterlearnstation/screen/bottombar_calismasi/search_bottombar.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List _page = [
    HomeBar(),
    SearchCustomBar(),
    ProfileBar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomBar Calismasi')),
      body: _page[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
