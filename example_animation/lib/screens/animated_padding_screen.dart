import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  double _padding = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        child: AnimatedPadding(
          padding: EdgeInsets.all(_padding),
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
          child: Container(color: Colors.red),
        ),
        onTap: () {
          setState(() {
            _padding = _padding == 10 ? 30 : 10;
          });
        },
      ),
    );
  }
}
