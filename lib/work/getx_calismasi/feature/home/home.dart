import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/feature/second_screen/view/second_screen.dart';
import 'package:getxlearn/product/controller/getx_controller.dart';
import 'package:getxlearn/product/widget/common_widget.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Controller ctrl = Get.put(Controller());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ctrl.increment(),
        label: const Text('Increment'),
        icon: const Icon(Icons.add),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildFloatingSearchBar(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Obx(() =>
                    Hero(tag: 'Number', child: Text(ctrl.count.toString()))),
              ),
              Hero(
                tag: 'ChangeScreen',
                child: ElevatedButton(
                    onPressed: () async => Get.to(() => const SecondScreen(),
                        transition: Transition.zoom),
                    child: const Text('Go to Second Screen')),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  Widget buildFloatingSearchBar(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final FloatingSearchBarController controller =
        FloatingSearchBarController();

    return FloatingSearchBar(
      controller: controller,
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: ExpandingFloatingSearchBarTransition(),

      leadingActions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              controller.open();
            },
          ),
        ),
        FloatingSearchBarAction(
          showIfOpened: true,
          showIfClosed: false,
          child: CircularButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {
              // Close the Floating Search Bar.
              controller.close();
            },
          ),
        ),
      ],

      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Container(height: 1000, color: Colors.white),
          ),
        );
      },
    );
  }
}
