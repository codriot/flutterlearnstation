import 'package:flutter/material.dart';

class SinifliCalisma extends StatefulWidget {
  const SinifliCalisma({super.key});

  @override
  State<SinifliCalisma> createState() => _SinifliCalismaState();
}

class _SinifliCalismaState extends State<SinifliCalisma> {
  List<Sinif> okul = [];

  void sinifolustur() {
    okul.add(Sinif(ogr1: 1, ogr2: 2));
    okul.add(Sinif(ogr1: 3, ogr2: 5));
    okul.add(Sinif(ogr1: 4, ogr2: 6));
  
  
  
  }
  

  @override
  void initState() {
    sinifolustur();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("uygulama"),
      ),
      body: ListView.builder(
        itemCount: okul.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(okul[index].ogr1.toString()),
            subtitle: Text(okul[index].ogr2.toString()),
          );
        },
      ),
    );
  }
}

class Sinif {
  final int ogr1;
  final int ogr2;

  Sinif({required this.ogr1, required this.ogr2});
}
