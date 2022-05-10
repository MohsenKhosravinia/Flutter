import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  CrossFadeState _state = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        child: Center(
          child: AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstChild: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.red),
              width: 200,
              height: 200,
            ),
            secondChild: const FlutterLogo(
              duration: Duration(milliseconds: 100),
              size: 200,
            ),
            crossFadeState: _state,
          ),
        ),
        onTap: () {
          setState(() {
            _state = _state == CrossFadeState.showFirst
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst;
          });
        },
      ),
    );
  }
}
