import 'package:flutter/material.dart';
import 'package:endolap_paciente_app/src/constants.dart';

class PersonalDataTabWidget extends StatelessWidget {
	const PersonalDataTabWidget({super.key});

	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				const Text('Nombre'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle().copyWith(hintText: "Daniel Benjamin"),
				),
				const SizedBox(height: 20),

				const Text('Apellido'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle().copyWith(hintText: "Palma Alvarez"),
				),
				const SizedBox(height: 20),

				const Text('Cédula de indentidad*'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle().copyWith(hintText: "19226226-2n"),
				),
				const SizedBox(height: 20),

				const Text('Fecha de nacimiento'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle().copyWith(hintText: "15 - 02 - 1998"),
				),
				const SizedBox(height: 20),

				const Text('Número de contacto'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle().copyWith(hintText: "95959262"),
				),
				const SizedBox(height: 20),


			],
		);
	}
}