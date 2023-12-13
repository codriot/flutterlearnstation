import 'package:flutter/material.dart';
import 'package:flutterlearnstation/product/services/notification_services.dart';
import 'package:flutterlearnstation/product/widget/no_network_widget.dart';
import 'package:flutterlearnstation/screen/network_yonetimi_calismasi/network_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
      home: const NetworkChangeView(),
    );
  }
}
