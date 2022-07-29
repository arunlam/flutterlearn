import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenWidth() {
    return Get.width;
  }

  static double getScreenHeight() {
    return Get.height;
  }

  static double getHeight(double pixels) {
    double x = getScreenHeight() / pixels; // get propotion
    return getScreenHeight() / x;
  }

  static double getWidth(double pixels) {
    double x = getScreenWidth() / pixels; // get propotion
    return getScreenWidth() / x;
  }
}
