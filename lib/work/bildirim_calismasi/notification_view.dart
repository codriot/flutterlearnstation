import 'package:flutter/material.dart';
import 'package:flutterlearnstation/product/services/notification_services.dart';

class NotiView extends StatelessWidget {
  const NotiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bildirim gönderici"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              NotificationService().showNotification(
                  title: "bildirim yollandı", body: "başarılı");
            },
            child: const Text("bildirim sallandı")),
      ),
    );
  }
}
