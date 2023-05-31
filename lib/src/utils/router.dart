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
	];
}