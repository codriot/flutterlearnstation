import 'package:flutter/material.dart';

class deneyelim extends StatefulWidget {
  const deneyelim({super.key});

  @override
  State<deneyelim> createState() => _deneyelimState();
}

class _deneyelimState extends State<deneyelim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        child: Center(
          child: MyInputBox(
            label: 'Öğrenci No',
            controller: TextEditingController(),
          ),
        ),
      ),
    );
  }
}

class MyInputBox extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  MyInputBox({
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: controller,
          onSubmitted: (value) {
            print("girdi $value");
          },
          decoration: InputDecoration(
              labelText: label,
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {
                  print("basıldı");
                },
                icon: const Icon(Icons.arrow_circle_right_rounded),
              )),
        ),
      ),
    );
  }
}
