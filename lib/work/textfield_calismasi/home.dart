import 'package:flutter/material.dart';
import 'package:flutterlearnstation/product/extension/extension.dart';

class HomeTextFieldLearn extends StatefulWidget {
  const HomeTextFieldLearn({super.key});

  @override
  State<HomeTextFieldLearn> createState() => _HomeTextFieldLearnState();
}

class _HomeTextFieldLearnState extends State<HomeTextFieldLearn> {
  //textfield için controller tanımlaması
  TextEditingController myController = TextEditingController();
  //yazıyı tutan variable
  String inputText = "";
  //textte yazdıracak fonksiyon
  void printText() {
    setState(() {
      inputText = "hello,${myController.text.capitalize()}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(inputText),
          TextField(
            controller: myController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'İsminizi Giriniz',
            ),
          ),
          ElevatedButton(
            onPressed: printText,
            child: const Text("Girdimi Al"),
          ),
        ],
      ),
    ));
  }
}
