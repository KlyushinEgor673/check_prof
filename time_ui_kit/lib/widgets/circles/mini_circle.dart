import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiniCircle extends StatelessWidget {
  const MiniCircle({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? 16.h : 16,
      height: orientation == Orientation.portrait ? 16.h : 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Color.fromRGBO(26, 111, 238, 1) : Colors.white,
        border: Border.all(width: 1, color: Color.fromRGBO(26, 111, 238, 1))
      ),
    );
  }
}
