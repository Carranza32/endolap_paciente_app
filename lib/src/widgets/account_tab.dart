import 'package:flutter/material.dart';

class AccountTabWidget extends StatelessWidget {
	const AccountTabWidget({super.key});

	@override
	Widget build(BuildContext context) {
		return Column(
			children: [
				const Text("Correo"),
				const SizedBox(height: 10),
				TextFormField(
					decoration: InputDecoration(
						border: OutlineInputBorder(),
						labelText: 'Correo',
					),
				
				)
			],
		);
	}
}