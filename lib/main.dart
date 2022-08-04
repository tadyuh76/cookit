import 'package:cookit/constants/colors.dart';
import 'package:cookit/screens/main/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookit',
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad
        },
      ),
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const Main(),
    );
  }
}
