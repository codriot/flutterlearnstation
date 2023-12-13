import 'package:flutter/material.dart';

void main() {
  runApp(alabicalis());
}

class alabicalis extends StatefulWidget {
  @override
  _alabicalisState createState() => _alabicalisState();
}

class _alabicalisState extends State<alabicalis> with TickerProviderStateMixin {
  bool _isTextFieldVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedOpacity(
            opacity: _isTextFieldVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Metin girin",
              ),
              onTap: () {
                // Ekranın üst kısmına animasyonla hareket ettirme
                var animation =
                    Tween(begin: Offset(0, -200), end: Offset(0, 200)).animate(
                        CurvedAnimation(
                            parent: animationController,
                            curve: Curves.easeInOut));
                animationController.forward();
              },
            ),
          ),
        ),
      ),
    );
  }

  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
