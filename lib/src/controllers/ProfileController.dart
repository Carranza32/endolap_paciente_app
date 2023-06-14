import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with GetSingleTickerProviderStateMixin {
	late TabController tabController;

	@override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}