import 'package:app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.toNamed(Routes.GUARD);
          showDialog(
              context: context,
              builder: (ctx) {
                return Dialog(
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('lllll'),
                      )
                    ],
                  ),
                );
              });
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
