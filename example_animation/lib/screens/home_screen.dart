import 'package:example_animation/screens/animated_crossfade_screen.dart';
import 'package:example_animation/screens/animated_switcher_screen.dart';
import 'package:flutter/material.dart';

import 'animated_container_screen.dart';
import 'animated_opacity_screen.dart';
import 'animated_padding_screen.dart';
import 'animated_positioned_screen.dart';
import 'list_animation_screen.dart';
import 'pulse_animation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const List<Map<String, Widget>> _screens = [
    {'Pulse animation': PulseAnimationScreen()},
    {'List animation': ListAnimationScreen()},
    {'Animated container': AnimatedContainerScreen()},
    {'Animated opacity': AnimatedOpacityScreen()},
    {'Animated padding': AnimatedPaddingScreen()},
    {'Animated positioned': AnimatedPositionedScreen()},
    {'Animated crossFade': AnimatedCrossFadeScreen()},
    {'Animated switcher': AnimatedSwitcherScreen()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: Container(
        color: Colors.indigo,
        child: ListView.builder(
          itemCount: _screens.length,
          itemBuilder: (BuildContext context, int index) {
            var _screen = _screens[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white70, width: 2),
                  borderRadius: BorderRadius.circular(100),
                ),
                color: Colors.indigo.withAlpha(230),
                elevation: 0,
                child: ListTile(
                  textColor: Colors.white,
                  title: Text(_screen.keys.first),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _screen.values.first),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
