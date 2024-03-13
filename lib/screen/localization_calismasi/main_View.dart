import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DilDegis extends StatelessWidget {
  const DilDegis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("maintitle").tr(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('en', 'US'));
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('tr', 'TR'));
              },
              child: const Text('Türkçe'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('ar', 'SA'));
              },
              child: const Text('العربية'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('de', 'DE'));
              },
              child: const Text('Deutsch'),
            ),
            const Text('translate').tr(),
            const Text("text").tr(),
          ],
        ),
      ),
    );
  }
}
