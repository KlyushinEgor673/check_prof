import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigCircle extends StatefulWidget {
  const BigCircle({super.key, required this.number, required this.onTap});

  final int number;
  final VoidCallback onTap;

  @override
  State<BigCircle> createState() => _BigCircleState();
}

class _BigCircleState extends State<BigCircle> {
  Color _color = Color.fromRGBO(245, 245, 249, 1);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: orientation == Orientation.portrait ? 80.w : 80,
        height: orientation == Orientation.portrait ? 80.h : 80,
        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
        child: Center(
          child: Text(
            widget.number.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: orientation == Orientation.portrait ? 24.sp : 24,
              height: 28 / 24,
              letterSpacing: 0.33,
              color: _color == Color.fromRGBO(26, 111, 238, 1)
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
      ),
      onTapDown: (_) {
        setState(() {
          _color = Color.fromRGBO(26, 111, 238, 1);
        });
      },
      onTapUp: (_) {
        setState(() {
          _color = Color.fromRGBO(245, 245, 249, 1);
        });
      },
    );
  }
}
