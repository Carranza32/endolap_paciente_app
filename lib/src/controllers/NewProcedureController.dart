import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewProcedureController extends GetxController {
  var selectedStep = 2.obs;
	var upperBound = 3.obs;
	var currentStep = 1.obs;
	final PageController pageController = PageController();

	List<DropdownMenuItem<int>> getProcedureType() {
		return const [
			DropdownMenuItem(
				value: 1,
				child: Text('Endoscopia'),
			),
			DropdownMenuItem(
				value: 2,
				child: Text('Colonoscopia'),
			),
			DropdownMenuItem(
				value: 3,
				child: Text('Cirugia menor'),
			),
			DropdownMenuItem(
				value: 4,
				child: Text('Cirugia mayor'),
			),
		];
	}

	List<DropdownMenuItem<int>> getSurgeryTypes() {
		return const [
			DropdownMenuItem(
				value: 1,
				child: Text('Colecistectomía'),
			),
			DropdownMenuItem(
				value: 2,
				child: Text('Hernioplastía'),
			),
			DropdownMenuItem(
				value: 3,
				child: Text('Baloón intragástrico elipse'),
			),
			DropdownMenuItem(
				value: 4,
				child: Text('Quiste pilonidal'),
			),
		];
	}

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