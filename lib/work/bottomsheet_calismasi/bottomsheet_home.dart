import 'package:flutter/material.dart';

class HomeSheet extends StatefulWidget {
  const HomeSheet({super.key});

  @override
  State<HomeSheet> createState() => _HomeSheetState();
}

// Todo: Öğren
class _HomeSheetState extends State<HomeSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("bottom sheet çalışması")),
        bottomSheet: Container(
          height: 100,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("bottom sheet"),
              Text("bottom sheet"),
              Text("bottom sheet"),
            ],
          ),
        ));
  }
}
