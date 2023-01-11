import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  initServices();
  runApp(const MyApp());
}

initServices() async {
  print('starting services.....');
  await Get.putAsync<Service>(() async => await Service());
  print('all Services started..');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx Service",
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX Service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.find().incrementCounter();
                  },
                  child: Text("Increment click"))
            ],
          ),
        ),
      ),
    );
  }
}
