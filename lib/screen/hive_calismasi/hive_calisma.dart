import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveCalismasi extends StatefulWidget {
  const HiveCalismasi({super.key});

  @override
  State<HiveCalismasi> createState() => _HiveCalismasiState();
}

class _HiveCalismasiState extends State<HiveCalismasi> {
  final _myBox = Hive.box('myBox');
  void onPressed() {
    print('Button Pressed');
  }

  void writeData() {
    _myBox.put('name', 'David');
    _myBox.put('age', 25);
    _myBox.put('friends', ['John', 'Anna', 'Peter']);
  }

  void readData() {
    print(_myBox.get('name'));
    print(_myBox.get('age'));
    print(_myBox.get('friends'));
  }

  void deleteData() {
    _myBox.delete('name');
    _myBox.delete('age');
    _myBox.delete('friends');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: writeData, child: const Text('Write')),
            MaterialButton(onPressed: readData, child: const Text('Read')),
            MaterialButton(onPressed: deleteData, child: const Text('Delete')),
          ],
        ),
      ),
    );
  }
}
