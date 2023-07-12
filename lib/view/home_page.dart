import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controller/home_controller.dart';
import 'package:getx_flutter/route/app_route.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    ever(controller.number, (res) {
      if (res == 10) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text("Sudah mencapai 10"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Ok"),
              ),
            ],
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  controller.number.value.toString(),
                  style: const TextStyle(fontSize: 24),
                )),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  AppRoutes.detail,
                  arguments: controller.number.value,
                );
              },
              child: const Text("To Detail"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text("Increment"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.decrement();
              },
              child: const Text("Decrement"),
            )
          ],
        ),
      ),
    );
  }
}
