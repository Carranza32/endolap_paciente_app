import 'package:endolap_paciente_app/src/utils/router.dart';
import 'package:endolap_paciente_app/src/utils/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return GetMaterialApp(
			title: 'Enaex App',
			getPages: Routes.route,
			initialRoute: '/tabs',
			locale: const Locale('es', 'ES'),
			translations: LanguageTranslations(),
			fallbackLocale: const Locale('es'),
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
        // useMaterial3: false,
        // colorSchemeSeed: const Color(0xff00d6d6),
				primaryColor: const Color(0xff00d6d6),
				visualDensity: VisualDensity.adaptivePlatformDensity,
				appBarTheme: const AppBarTheme(
					color: Colors.white,
					centerTitle: true,
					titleTextStyle: TextStyle(
						color: Color(0xff007eb9),
						fontSize: 20,
						fontWeight: FontWeight.w600,
					),
					elevation: 0,
				),
			),
		);
	}
}