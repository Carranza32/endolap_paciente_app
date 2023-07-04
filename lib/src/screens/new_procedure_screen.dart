import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:endolap_paciente_app/src/controllers/NewProcedureController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:progress_bar_steppers/steppers.dart';

import '../constants.dart';

class NewProcedureScreen extends StatelessWidget {
	const NewProcedureScreen({super.key});

	@override
	Widget build(BuildContext context) {
		NewProcedureController controller = NewProcedureController();
		final size = MediaQuery.of(context).size;

		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Agendar procedimiento'),
				),
				body: Padding(
					padding: const EdgeInsets.all(20),
					child: Column(
						children: [
							Obx(() => Steppers(
								currentStep: controller.currentStep.value,
								direction: StepperDirection.horizontal,
								stepBarStyle: StepperStyle(
									activeColor: const Color(0xff00d6d6),
								),
								labels: [
									StepperData(
										label: "Datos clínicos",
									),
									StepperData(
										label: "Fecha y hora",
									),
									StepperData(
										label: "Datos personales",
									),
								],
							)),

							ExpandablePageView(
								controller: controller.pageController,
								allowImplicitScrolling: true,
								estimatedPageSize: size.height * 0.8,
								children: [
									SingleChildScrollView(
										primary: true,
										child: _buildStepContent(context, controller, 0),
									),
									SingleChildScrollView(
										primary: true,
										child: _buildStepContent(context, controller, 1),
									),
									SingleChildScrollView(
										primary: true,
										child: _buildStepContent(context, controller, 2),
									),
								],
							)
						],
					),
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

							const SizedBox(height: 20),
							ElevatedButton(
								style: accentButtonStyle().copyWith(
									minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
								),
								child: const Text('Continuar'),
								onPressed: () => controller.nextPage()
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
					),

					const SizedBox(height: 20),
					ElevatedButton(
						style: accentButtonStyle().copyWith(
							minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
						),
						child: const Text('Continuar'),
						onPressed: () => controller.nextPage()
					),
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

				const SizedBox(height: 20),
				ElevatedButton(
					style: accentButtonStyle().copyWith(
						minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
					),
					child: const Text('Continuar'),
					onPressed: () {
						Get.defaultDialog(
							title: 'Agendar procedimiento',
							titleStyle: titleStyle(),
							titlePadding: const EdgeInsets.symmetric(vertical: 20),
							contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
							content: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: [
									Text("Datos del paciente", style: cardTitleStyle()),
									const SizedBox(height: 10),
									Text('Diego Armando Maradona'),
									const SizedBox(height: 5),
									Text('FONASA'),
									const SizedBox(height: 5),
									Text('V-12345678'),

									const SizedBox(height: 20),
									Text("Hora agendada", style: cardTitleStyle()),

									const SizedBox(height: 10),
									const Row(
										children: [
											Icon(Icons.place_outlined, color: Color(0xff00d6d6), size: 17),
											SizedBox(width: 7),
											Text('Las Heras 650, Los Andes'),
										],
									),
									const SizedBox(height: 5),
									const Row(
										children: [
											Icon(Icons.date_range_outlined, color: Color(0xff00d6d6), size: 17),
											SizedBox(width: 7),
											Text('01/01/2021'),
										],
									),
									const SizedBox(height: 5),
									const Row(
										children: [
											Icon(Icons.access_time_outlined, color: Color(0xff00d6d6), size: 17),
											SizedBox(width: 7),
											Text('10:45'),
										],
									),

									const SizedBox(height: 20),
									ElevatedButton(
										style: accentButtonStyle().copyWith(
											minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
										),
										child: const Text('Agendar'),
										onPressed: () {
											Get.back();
											_successDialog();
										}
									),
									const SizedBox(height: 10),
									TextButton(
										style: textButtonStyle().copyWith(
											minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
										),
										child: const Text('Cancelar'),
										onPressed: (){
											Get.back();
										}
									),
								],
							)
						);
					}
				),
			],
		);
	}

	_successDialog(){
		return Get.defaultDialog(
			title: 'Programa',
			titleStyle: titleStyle(),
			titlePadding: const EdgeInsets.symmetric(vertical: 20),
			contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
			content: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Text("¡Procedimiento agendado con éxito!", style: cardTitleStyle()),
					const SizedBox(height: 10),

					Center(
						child: Image.asset('assets/images/done.png', width: 200, height: 200,),
					),

					const SizedBox(height: 10),
					const Text('A continuación deebes descargar el programa para presentarlo en caja al momento de pagar.'),

					const SizedBox(height: 20),
					ElevatedButton(
						style: accentButtonStyle().copyWith(
							minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
						),
						child: const Text('Descargar'),
						onPressed: () {
							Get.back();
							Get.back();
						}
					),
					const SizedBox(height: 10),
					TextButton(
						style: textButtonStyle().copyWith(
							minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
						),
						child: const Text('Cancelar'),
						onPressed: (){
							Get.back();
						}
					),
				],
			)
		);
	}
	
