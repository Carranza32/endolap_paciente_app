import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:endolap_paciente_app/src/controllers/NewProcedureController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class NewProcedureScreen extends StatelessWidget {
	const NewProcedureScreen({super.key});

	@override
	Widget build(BuildContext context) {
		NewProcedureController controller = NewProcedureController();

		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Agendar procedimiento'),
				),
				body: Obx(() => 
					Stepper(
						type: StepperType.horizontal,
						currentStep: controller.selectedStep.value,
						elevation: 0,
						controlsBuilder: (context, details) {
							return Column(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,
								children: [
									// if (controller.selectedStep.value != 0)
									// 	ElevatedButton(
									// 		style: accentButtonStyle().copyWith(
									// 			minimumSize: MaterialStateProperty.all<Size>(const Size(100, 50)),
									// 		),
									// 		child: const Text('Anterior'),
									// 		onPressed: () {
									// 			controller.selectedStep.value--;
									// 		},
									// 	),

									if (controller.selectedStep.value != controller.upperBound.value)
										ElevatedButton(
											style: accentButtonStyle().copyWith(
												minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
											),
											child: const Text('Continuar'),
											onPressed: () {
												controller.selectedStep.value++;
											},
										),
								],
							);
						},
						stepIconBuilder: (stepIndex, stepState) {
							return const Icon(
								Icons.circle,
								size: 20,
								color: Color(0xff00d6d6),
							);
						},
						onStepTapped: (step) {
							controller.selectedStep.value = step;
						},
						steps: [
							Step(
								title: Container(),
								label: const Text('Datos clínicos'),
								isActive: true,
								content: _buildStepContent(context, controller, 0),
							),
							Step(
								title: Container(),
								label: const Text('Fecha y hora'),
								content: _buildStepContent(context, controller, 1),
							),
							Step(
								title: Container(),
								label: const Text('Datos personales'),
								content: _buildStepContent(context, controller, 2),
							),
						],
					)
				)
			),
		);
	}
}

	Widget _buildStepContent(BuildContext context, NewProcedureController controller, int index) {
		switch (index) {
			case 0:
				return _buildStep1(controller);
			case 1:
				return _buildStep2(controller);
			case 2:
				return _buildStep3(controller);
			default:
				return Container();
		}
	}

	Widget _buildStep1(controller) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
			mainAxisSize: MainAxisSize.max,
			children: [
				Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					children: [
							const SizedBox(height: 20),

							const Text('Tipo de procedimiento'),
							const SizedBox(height: 5),

							DropdownButtonFormField(
								onChanged: (value) => print(value),
								decoration: formFieldStyle().copyWith(
									labelText: 'Seleccione una opción',
								),
								items: controller.getProcedureType(),
							),

							const SizedBox(height: 20),

							const Text('Opciones de cirugías'),
							const SizedBox(height: 5),

							DropdownButtonFormField(
								onChanged: (value) => print(value),
								decoration: formFieldStyle().copyWith(
									labelText: 'Seleccione una opción',
								),
								items: controller.getSurgeryTypes(),
							),
					],
				),
			],
		);
	}
	
	
	Widget _buildStep2(controller) {
		final horario = ['08:00', '09:00', '10:00', '11:00', '12:00', '13:00'];
		var showHorarios = List<Widget>.empty(growable: true);

		for (var element in horario) {
			showHorarios.add(
				OutlinedButton(
					style: outlineButtonStyle(),
					child: Text(element),
					onPressed: () {
					},
				)
			);
		}

		return SingleChildScrollView(
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					const Text('Seleccione el día'),
					const SizedBox(height: 5),
					Card(
						elevation: 3,
						child: CalendarDatePicker2(
							config: CalendarDatePicker2Config(),
							value: [DateTime.now()]
						),
					),

					const SizedBox(height: 20),

					const Text('Seleccione una hora disponible'),
					const SizedBox(height: 5),
					
					Wrap(
						runSpacing: 10,
						spacing: 10,
						children: showHorarios,					
					)
				],
			),
		);
	}
	
	Widget _buildStep3(controller) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				const Text('Nombre'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle(),
				),

				const SizedBox(height: 20),

				const Text('Apellido'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle()
				),

				const SizedBox(height: 20),

				const Text('Cédula de identidad*'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle()
				),

				const SizedBox(height: 20),

				const Text('Fecha de nacimiento'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle()
				),

				const SizedBox(height: 20),

				const Text('Número de contacto'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle()
				),
			],
		);
	}
	
