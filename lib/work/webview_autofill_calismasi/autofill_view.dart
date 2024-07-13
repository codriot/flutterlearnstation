import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class AutoFillView extends StatelessWidget {
  const AutoFillView({super.key});

  void _onFill() async {
    final response = await http.get(Uri.parse('https://www.kitapyurdu.com'));
    dom.Document html = dom.Document.html(response.body);
    final input = html.getElementById('search-input');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
