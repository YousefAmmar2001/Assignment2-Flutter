import 'package:assignment2/views/screens/responsive_design/large_screens.dart';
import 'package:assignment2/views/screens/responsive_design/small_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: ResponsiveScreen()));
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 400
        ? const LargeScreen()
        : const SmallScreen();
  }
}
