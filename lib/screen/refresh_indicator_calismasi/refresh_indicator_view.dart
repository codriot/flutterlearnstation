import 'package:flutter/material.dart';
import 'package:flutterlearnstation/product/examplelist/example_list.dart';
import 'package:flutterlearnstation/product/indicator/check_mark_indicator.dart';

class RefreshIndicatorView extends StatefulWidget {
  const RefreshIndicatorView({super.key});

  @override
  State<RefreshIndicatorView> createState() => _RefreshIndicatorViewState();
}

class _RefreshIndicatorViewState extends State<RefreshIndicatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Indicator'),
      ),
      body: SafeArea(
        child: CheckMarkIndicator(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Text(
                Examplelist().exampledata[index],
                style: TextStyle(color: Colors.white),
              );
            },
          ),
        ),
      ),
    );
  }
}
