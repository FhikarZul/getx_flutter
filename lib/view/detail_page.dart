import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controller/detail_controller.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  final controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Center(
          child: Text(
        '${controller.number}',
        style: const TextStyle(fontSize: 24),
      )),
    );
  }
}
