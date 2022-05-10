import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedScreen> createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool _isTop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
            top: _isTop ? 10 : 150,
            left: _isTop ? 0 : 20,
            right: _isTop ? 0 : 20,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isTop = !_isTop;
                });
              },
              child: Center(
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
