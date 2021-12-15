import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guard_controller.dart';

class GuardView extends GetView<GuardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GuardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GuardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
