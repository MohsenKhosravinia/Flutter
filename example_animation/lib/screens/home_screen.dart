import 'package:flutter/material.dart';

import 'animated_container_screen.dart';
import 'animated_opacity_screen.dart';
import 'animated_padding_screen.dart';
import 'animated_positioned_screen.dart';
import 'list_animation_screen.dart';
import 'pulse_animation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return ListTile(
                title: const Text('Pulse animation'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PulseAnimationScreen()),
                  );
                },
              );
            case 1:
              return ListTile(
                title: const Text('List animation'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListAnimationScreen()),
                  );
                },
              );
            case 2:
              return ListTile(
                title: const Text('Animated container'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedContainerScreen()),
                  );
                },
              );
            case 3:
              return ListTile(
                title: const Text('Animated opacity'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedOpacityScreen()),
                  );
                },
              );
            case 4:
              return ListTile(
                title: const Text('Animated Padding'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPaddingScreen()),
                  );
                },
              );
            case 5:
              return ListTile(
                title: const Text('Animated Positioned'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPositionedScreen()),
                  );
                },
              );
          }
          return Container();
        },
      ),
    );
  }
}
