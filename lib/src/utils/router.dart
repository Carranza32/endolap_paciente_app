import 'package:endolap_paciente_app/src/screens/settings_screen.dart';
import 'package:get/get.dart';
import '../screens/index.dart';


class Routes {
	static final route = [
		GetPage(
			name: '/tabs',
			page: () => const TabScreen(),
		),
    GetPage(
      name: '/new_procedure',
      page: () => const NewProcedureScreen(),
    ),
		GetPage(
			name: '/settings',
			page: () => const SettingsScreen(),
		),
	];
}