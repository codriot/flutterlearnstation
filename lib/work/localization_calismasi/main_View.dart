import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnstation/product/constant/enum/locale_enum.dart';

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
                context.setLocale(Locales.en.locale);
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locales.tr.locale);
              },
              child: const Text('Türkçe'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locales.ar.locale);
              },
              child: const Text('العربية'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locales.de.locale);
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
