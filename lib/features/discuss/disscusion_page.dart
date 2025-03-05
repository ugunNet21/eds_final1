import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/home_controller.dart';

class DisscusionPage extends StatefulWidget {
  const DisscusionPage({super.key});

  @override
  State<DisscusionPage> createState() => _DisscusionPageState();
}

class _DisscusionPageState extends State<DisscusionPage> {
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diskusi'),
      ),
      body: Center(child: Text("data")),
    );
  }
}
