import 'package:endolap_paciente_app/src/controllers/AuthController.dart';
import 'package:endolap_paciente_app/src/widgets/profile/account_tab_widget.dart';
import 'package:endolap_paciente_app/src/widgets/profile/medic_tab_widget.dart';
import 'package:endolap_paciente_app/src/widgets/profile/personal_data_tab_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_bar_steppers/steppers.dart';

import '../../constants.dart';

class SignUpScreen extends StatelessWidget {
	const SignUpScreen({super.key});

	@override
	Widget build(BuildContext context) {
		final size = MediaQuery.of(context).size;
		AuthController controller = Get.put(AuthController());

		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Registro'),
				),
				body: Padding(
					padding: const EdgeInsets.all(20),
					child: Column(
						children: [
							Image.asset('assets/images/logo-endolap.jpg', width: size.width * 1),
							Text("Regístrate", style: titleStyle()),
							const SizedBox(height: 30),

							Obx(() => Steppers(
								currentStep: controller.currentStep.value,
								direction: StepperDirection.horizontal,
								stepBarStyle: StepperStyle(
									activeColor: const Color(0xff00d6d6),
								),
								labels: [
									StepperData(
										label: "Cuenta",
									),
									StepperData(
										label: "Datos personales",
									),
									StepperData(
										label: "Ficha clínica",
									),
								],
							)),

							ExpandablePageView(
								controller: controller.pageController,
								allowImplicitScrolling: true,
								children: const [
									SingleChildScrollView(
										primary: true,
										child: AccountTabWidget(),
									),
									SingleChildScrollView(
										primary: true,
										child: PersonalDataTabWidget(),
									),
									SingleChildScrollView(
										primary: true,
										child: MedicTabWidget(),
									),
								],
							)
						],
					),
				),
			),
		);
	}
}