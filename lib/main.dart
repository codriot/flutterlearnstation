import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnstation/product/Init/product_localization.dart';
import 'package:flutterlearnstation/product/const.dart';
import 'package:flutterlearnstation/product/services/notification_services.dart';
import 'package:flutterlearnstation/product/widget/no_network_widget.dart';
import 'package:flutterlearnstation/screen/localization_calismasi/main_View.dart';
// import 'package:flutterlearnstation/screen/network_yonetimi_calismasi/network_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:flutterlearnstation/screen/refresh_indicator_calismasi/refresh_indicator_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  var box = await Hive.openBox('myBox');

  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(centerTitle: true),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      builder: (context, child) {
        return Column(
          children: [
            Expanded(
              child: child ?? const SizedBox(),
            ),
            const NoNetworkWidget(),
          ],
        );
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const DilDegis(),
    );
  }
}
