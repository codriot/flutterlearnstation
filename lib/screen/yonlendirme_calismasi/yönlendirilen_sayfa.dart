import 'package:flutter/material.dart';
import 'package:flutterlearnstation/main.dart';

class sekme extends StatefulWidget {
  const sekme({super.key});

  @override
  State<sekme> createState() => _sekmeState();
}

class _sekmeState extends State<sekme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "kitap1",
    "kitap2",
    "kitap3",
    "kitap4",
    "kitap5",
    "kitap6",
    "kitap7",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var kitap in searchTerms) {
      if (kitap.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(kitap);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var kitap in searchTerms) {
      if (kitap.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(kitap);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // kitap ismi düzenleme kısmı
  @override
  String get searchFieldLabel => 'Kitap İsmi';
}
