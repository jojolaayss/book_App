import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/functions_helper.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.cover,
            width: getSize(context).width,
          ),
          SafeArea(child: child!),
        ],
      ),
    );
  }
}
