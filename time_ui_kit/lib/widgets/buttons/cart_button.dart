import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key, required this.price, required this.onTap});

  final double price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: orientation == Orientation.portrait
            ? 335.w
            : MediaQuery.of(context).size.width * 0.7,
        height: orientation == Orientation.portrait ? 56.h : 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(26, 111, 238, 1),
        ),
        child: Stack(
          children: [
            Positioned(
              left: orientation == Orientation.portrait ? 16.w : 16,
              bottom: 0,
              top: 0,
              child: Center(
                child: SvgPicture.asset(
                  'icons/shopping-cart.svg',
                  package: 'time_ui_kit',
                  color: Colors.white,
                  height: orientation == Orientation.portrait ? 20.h : 20,
                  width: orientation == Orientation.portrait ? 20.w : 20,
                ),
              ),
            ),
            Positioned(
              left: orientation == Orientation.portrait ? 52.w : 52,
              top: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  'В корзину',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: orientation == Orientation.portrait ? 17.sp : 17,
                    height: 24 / 17,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              right: orientation == Orientation.portrait ? 16.w : 16,
              top: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  '$price ₽',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: orientation == Orientation.portrait ? 17.sp : 17,
                    height: 24 / 17,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
