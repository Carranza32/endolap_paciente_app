import 'package:flutter/material.dart';

InputDecoration formFieldStyle() => const InputDecoration(
	labelStyle: TextStyle(color: Color(0xff777777)),
	border: OutlineInputBorder(
		borderRadius: BorderRadius.all(Radius.circular(10.0)),
		borderSide: BorderSide(color: Color(0xff777777)),
	),
	enabledBorder: OutlineInputBorder(
		borderRadius: BorderRadius.all(Radius.circular(10.0)),
		borderSide: BorderSide(color: Color(0xff777777)),
	),
	focusedBorder: OutlineInputBorder(
		borderRadius: BorderRadius.all(Radius.circular(10.0)),
		borderSide: BorderSide(color: Color(0xff777777)),
	),
);

ButtonStyle primaryButtonStyle() => ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff007eb9)),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
);

ButtonStyle accentButtonStyle() => ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff00d6d6)),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
);

ButtonStyle outlineButtonStyle() => ButtonStyle(
	backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
	foregroundColor: MaterialStateProperty.all<Color>(const Color(0xff00d6d6)),
	side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color(0xff00d6d6))),
	padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
	shape: MaterialStateProperty.all<RoundedRectangleBorder>(
		RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(5.0),
		),
	),
);

TextStyle titleStyle() => const TextStyle(
	fontSize: 20,
	fontWeight: FontWeight.bold,
	color: Color(0xff007eb9),
);