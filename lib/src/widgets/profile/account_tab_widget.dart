import 'package:flutter/material.dart';
import 'package:endolap_paciente_app/src/constants.dart';

class AccountTabWidget extends StatelessWidget {
	const AccountTabWidget({super.key});

	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				const Text('Correo'),
				const SizedBox(height: 5),
				TextFormField(
					decoration: formFieldStyle()
				),
				const SizedBox(height: 20),
				
				const Text('Contraseña'),
				const SizedBox(height: 5),
				TextFormField(
					obscureText: true,
					decoration: formFieldStyle().copyWith(
						suffixIcon: IconButton(
							icon: const Icon(Icons.remove_red_eye_outlined),
							onPressed: () {},
						)
					)
				),
				const SizedBox(height: 20),

				const Text('Repetir contraseña'),
				const SizedBox(height: 5),
				TextFormField(
					obscureText: true,
					decoration: formFieldStyle().copyWith(
						suffixIcon: IconButton(
							icon: const Icon(Icons.remove_red_eye_outlined),
							onPressed: () {},
						)
					)
				),
				const SizedBox(height: 20),


			],
		);
	}
}