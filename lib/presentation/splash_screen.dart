import 'package:flutter/material.dart';
import 'package:project_setting/core/theme/icon.dart';
import 'package:project_setting/core/theme/typhography.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int _dotCount = 0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 500),
        )..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            setState(() {
              _dotCount = (_dotCount + 1) % 4;
            });
            _animationController.forward(from: 0);
          }
        });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppIcons.logoIcon(),
                const SizedBox(width: 13),
                Text('코탐', style: CotamTyphography.h1Bold),
              ],
            ),
            const Spacer(),
            Text('고양이와 노는중${'.' * _dotCount}', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
