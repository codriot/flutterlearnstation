import 'package:flutter/material.dart';
import 'package:getxlearn/product/theme/theme_service.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeService themeService = ThemeService();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings View'),
      ),
      body: Column(
        children: [
          Card(
              child: ListTile(
            title: const Text("tema değiş"),
            onTap: () => themeService.changeThemeMode(),
          )),
        ],
      ),
    );
  }
}
