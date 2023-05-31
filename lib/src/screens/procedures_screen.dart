import 'package:flutter/material.dart';

class ProcedureScreen extends StatelessWidget {
	const ProcedureScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Mis procedimiento'),
				),
				body: Column(
					mainAxisAlignment: MainAxisAlignment.start,
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						const SizedBox(height: 20),
						const Text('Procedimientos agendados', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
						const SizedBox(height: 20),
						
						Expanded(
							child: ListView.builder(
								padding: const EdgeInsets.all(20),
								itemCount: 20,
								itemBuilder: (context, index) {
									return Container(
										padding: const EdgeInsets.all(13),
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
												Text('Procedimiento $index'),
												const SizedBox(height: 7),

												const Row(
													children: [
														Icon(Icons.monitor_heart_outlined, color: Color(0xff00d6d6)),
														SizedBox(width: 7),
														Text('Hernioplastía'),
													],
												),
												
												const SizedBox(height: 10),
												const Row(
													mainAxisAlignment: MainAxisAlignment.spaceBetween,
													children: [
														Row(
															children: [
																Icon(Icons.date_range_outlined, color: Color(0xff00d6d6)),
																SizedBox(width: 7),
																Text('01/01/2021'),
															],
														),

														Row(
															children: [
																Icon(Icons.access_time_outlined, color: Color(0xff00d6d6)),
																SizedBox(width: 7),
																Text('10:45'),
															],
														),

														Row(
															children: [
																Icon(Icons.circle, color: Colors.green),
																SizedBox(width: 7),
																Text('Confirmada'),
															],
														),
													],
												),
											
												const SizedBox(height: 10),

												const Row(
													children: [
														Icon(Icons.place_outlined, color: Color(0xff00d6d6)),
														SizedBox(width: 7),
														Text('Las Heras 650, Los Andes'),
													],
												),
											],
										),
									);
								},
							),
						),
					],
				),
			)
		);
	}
}