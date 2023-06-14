import 'package:flutter/material.dart';
import 'package:endolap_paciente_app/src/constants.dart';

class MedicTabWidget extends StatelessWidget {
	const MedicTabWidget({super.key});

	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				const Text('Previsión médica'),
				const SizedBox(height: 10),
				DropdownButtonFormField(
					onChanged: (value) => print(value),
					decoration: formFieldStyle().copyWith(
						labelText: 'Seleccione una opción',
					),
					items: [
						DropdownMenuItem(
							value: 1,
							child: Text('FONASA'),
						),
					]
				),
				const SizedBox(height: 20),


			],
		);
	}
}