class Examplelist {
  final List<String> _dataExample = List<String>.generate(
      growable: true, 10, (index) => 'liste numarasi: $index');
  List<String> get exampledata => _dataExample;
}
