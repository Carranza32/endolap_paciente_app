import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
	var currentStep = 1.obs;
	final PageController pageController = PageController();

	nextPage(){
		currentStep.value++;

		pageController.nextPage(
			duration: const Duration(milliseconds: 300),
			curve: Curves.easeInOut,
		);
	}

	previousPage(){
		currentStep.value--;

		pageController.previousPage(
			duration: const Duration(milliseconds: 300),
			curve: Curves.easeInOut,
		);
	}
}