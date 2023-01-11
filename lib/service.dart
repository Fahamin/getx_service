import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
this class is like getxController
it shares the same lifecycle (onInit),onReday(),onclose().

It just notifies Getx Dependency Injection System,
that this subclass can not be removed from memory
 */
class Service extends GetxService{

  Future<void> incrementCounter()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter')??0)+1;
    debugPrint('presed $counter times.');
    await prefs.setInt('counter', counter);
  }
}