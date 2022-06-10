import 'package:flutter/material.dart';

class Animated_skill_icons extends StatelessWidget {
  Animated_skill_icons({
    Key? key,
    required this.imagePath,
    required AnimationController controller,
  })  : _controller = controller,
        super(key: key);

  final AnimationController _controller;
  final imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
            animation: _controller,
            child: CircleAvatar(
              radius: 40,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.pinkAccent],
                  ),
                ),
              ),
            ),
            builder: (context, Widget? child) {
              return Transform.rotate(
                angle: _controller.value * 2 * 3.141592653589793238462643,
                child: child,
              );
            }),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 5),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(image: AssetImage('$imagePath')),
            ),
          ),
        )
      ],
    );
  }
}
