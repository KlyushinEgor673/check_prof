import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleController extends StatelessWidget {
  const ToggleController({super.key, required this.isActive, required this.onTap, });

  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: orientation == Orientation.portrait ? 48.w : 48,
        height: orientation == Orientation.portrait ? 28.h : 28,
        decoration: BoxDecoration(
          color: isActive ? Color.fromRGBO(26, 111, 238, 1) : Color.fromRGBO(235, 235, 235, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              top: 0,
              bottom: 0,
              left: isActive ? null : orientation == Orientation.portrait ? 2.w : 2,
              right: isActive ? orientation == Orientation.portrait ? 2.w : 2  : null,
              child: Container(
                height: orientation == Orientation.portrait ? 24.h : 24,
                width: orientation == Orientation.portrait ? 24.h : 24,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
