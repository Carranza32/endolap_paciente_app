import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
	const NotificationScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Notification'),
				),
				body: const Center(
					child: Text('Notification Screen'),
				),
			)
		);
	}
}