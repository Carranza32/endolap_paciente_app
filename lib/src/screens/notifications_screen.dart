import 'package:flutter/material.dart';

import '../constants.dart';

class NotificationScreen extends StatelessWidget {
	const NotificationScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Notification'),
				),
				body: Column(
					children: [
						Text("Hoy", style: cardTitleStyle()),
						const SizedBox(height: 10),

						ListView.builder(
							physics: const NeverScrollableScrollPhysics(),
							shrinkWrap: true,
							itemCount: 3,
							padding: const EdgeInsets.all(20),
							itemBuilder: (context, index) {
								return Container(
									padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
									margin: const EdgeInsets.only(bottom: 23),
									decoration: BoxDecoration(
										borderRadius: BorderRadius.circular(10),
										color: Colors.white,
										boxShadow: const [
											BoxShadow(
												offset: Offset(0, 3),
												spreadRadius: -4,
												blurRadius: 10,
												color: Color.fromRGBO(0, 0, 0, 0.2),
											),
										],
									),
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											Text('Procedimiento $index agendado', style: cardTitleStyle()),
											const SizedBox(height: 7),
											const Text("Agendaste con éxito un procedimiento para el día 29/05/23")
										],
									),
								);
							}							
						)
					],
				),
			)
		);
	}
}