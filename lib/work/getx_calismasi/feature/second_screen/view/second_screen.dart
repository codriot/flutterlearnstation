import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/feature/settings/settings_view.dart';
import 'package:getxlearn/product/controller/getx_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Controller ctrl = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        actions: const [],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ctrl.decrement(),
        label: const Text('Decrement'),
        icon: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Center(
            child: Obx(
              () => Hero(tag: 'Number', child: Text("${ctrl.count}")),
            ),
          ),
          Hero(
            tag: 'ChangeScreen',
            child: ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text('Back to Home Screen')),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(() => const SettingsView());
              },
              child: const Text('Settings')),
        ],
      ),
    );
  }
}
