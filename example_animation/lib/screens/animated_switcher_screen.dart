import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  bool _isFirstWidget = true;

  final Widget _firstWidget = Container(
    key: const ValueKey(1),
    color: Colors.red,
    width: 100,
    height: 200,
  );

  final Widget _secondWidget = Container(
    key: const ValueKey(2),
    color: Colors.amber,
    width: 200,
    height: 100,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: _isFirstWidget ? _secondWidget : _firstWidget,
          ),
          onTap: () {
            setState(() {
              _isFirstWidget = !_isFirstWidget;
            });
          },
        ),
      ),
    );
  }
}
