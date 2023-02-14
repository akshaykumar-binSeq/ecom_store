import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// String sampleImageUrl =
//     'https://d1pnnwteuly8z3.cloudfront.net/images/7462b53b-722a-4118-bce0-9de00cb86bc3/042e4872-744c-41b8-b577-5e4cf43d584d.jpeg';

MaterialColor primaryColor = MaterialColor(int.parse("0xff550586"), const {
  50: Color.fromARGB(255, 248, 247, 255),
  100: Color.fromARGB(255, 186, 173, 211),
  200: Color.fromARGB(255, 100, 101, 176),
  300: Color.fromARGB(255, 110, 77, 170),
  400: Color.fromARGB(255, 103, 65, 174),
  500: Color.fromARGB(255, 102, 47, 165),
  600: Color.fromARGB(255, 79, 42, 182),
  700: Color.fromARGB(255, 80, 27, 177),
  800: Color.fromARGB(255, 55, 8, 186),
  900: Color.fromARGB(255, 54, 0, 181),
});

MaterialColor secondaryColor = MaterialColor(int.parse("0xff009F18"), const {
  50: Color.fromARGB(255, 220, 240, 223),
  100: Color.fromARGB(255, 167, 212, 174),
  200: Color.fromARGB(255, 117, 185, 127),
  300: Color.fromARGB(255, 81, 184, 96),
  400: Color.fromARGB(255, 58, 177, 75),
  500: Color.fromARGB(255, 17, 161, 39),
  600: Color.fromARGB(255, 2, 146, 24),
  700: Color.fromARGB(255, 1, 128, 20),
  800: Color.fromARGB(255, 1, 116, 18),
  900: Color.fromARGB(255, 0, 82, 13),
});

Color secondaryColorShade = const Color(0xff001043);

List<Color> themeGradients = [
  const Color(0xff03273c),
  const Color.fromRGBO(255, 255, 255, 1.0),
];

double screenWidth = 0.0;
double screenHeight = 0.0;

String rupeeSymbol = '₹';

void setScreenDimensions(BuildContext context) {
  screenHeight = MediaQuery.of(context).size.height;
  screenWidth = MediaQuery.of(context).size.width;
}

void toastMessage(dynamic message,
    {ToastGravity gravity = ToastGravity.BOTTOM}) {
  log('toast: $message');
  Fluttertoast.showToast(msg: '$message', gravity: gravity);
}

double getFileSizeInMb(File file) {
  int sizeInBytes = file.lengthSync();
  double sizeInMb = sizeInBytes / (1024 * 1024);

  log('${file.path}: $sizeInMb');
  return sizeInMb;
}

TextStyle boldHeading = const TextStyle(
    fontSize: 21, fontWeight: FontWeight.bold, color: Colors.black54);

TextStyle appBarText = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
TextStyle boldWord = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[800]);
TextStyle boldValue = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey[800]);
TextStyle boldValuePrimaryColor =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: primaryColor);
TextStyle standardText = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[700]);
TextStyle smallText = const TextStyle(
    fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black54);
SizedBox thickSpace = const SizedBox(
  height: 10,
);
