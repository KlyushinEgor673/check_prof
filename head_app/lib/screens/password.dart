import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_ui_kit/time_ui_kit.dart';
import 'package:time_ui_kit/widgets/circles/mini_circle.dart';

class Password extends StatefulWidget {
  const Password({super.key, required this.isNew});

  final bool isNew;

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  List<bool> _miniCircles = [false, false, false, false];
  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
      print(_controller.text.length);
      for (int i = 0; i < 4; ++i){
        setState(() {
          _miniCircles[i] = false;
        });
      }
      for (int i = 0; i < _controller.text.length; ++i){
        setState(() {
          _miniCircles[i] = true;
        });
      }
      if (_controller.text.length == 4){
        Navigator.pushNamed(context, '/profile');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top:
                    (orientation == Orientation.portrait ? 144.h : 144) -
                    MediaQuery.of(context).padding.top,
                bottom: orientation == Orientation.portrait ? 16.h : 16,
              ),
              child: Center(
                child: Text(
                  'Создайте пароль',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: orientation == Orientation.portrait ? 24.sp : 24,
                    height: 28 / 24,
                    letterSpacing: 0.33,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: orientation == Orientation.portrait ? 56.h : 56,
              ),
              child: Center(
                child: Text(
                  'Для защиты ваших персональных данных',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: orientation == Orientation.portrait ? 15.sp : 15,
                    height: 20 / 15,
                    color: Color.fromRGBO(147, 147, 150, 1),
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: orientation == Orientation.portrait ? 60.h : 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: orientation == Orientation.portrait ? 12.w : 12,
                children: [
                  MiniCircle(isActive: _miniCircles[0]),
                  MiniCircle(isActive: _miniCircles[1]),
                  MiniCircle(isActive: _miniCircles[2]),
                  MiniCircle(isActive: _miniCircles[3]),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: orientation == Orientation.portrait ? 24.h : 24,
                  ),
                  width: orientation == Orientation.portrait ? 288.w : 288,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigCircle(
                        number: 1,
                        onTap: () {
                          _controller.text += '1';
                        },
                      ),
                      BigCircle(
                        number: 2,
                        onTap: () {
                          _controller.text += '2';
                        },
                      ),
                      BigCircle(
                        number: 3,
                        onTap: () {
                          _controller.text += '3';
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: orientation == Orientation.portrait ? 24.h : 24,
                  ),
                  width: orientation == Orientation.portrait ? 288.w : 288,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigCircle(
                        number: 4,
                        onTap: () {
                          _controller.text += '4';
                        },
                      ),
                      BigCircle(
                        number: 5,
                        onTap: () {
                          _controller.text += '5';
                        },
                      ),
                      BigCircle(
                        number: 6,
                        onTap: () {
                          _controller.text += '6';
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: orientation == Orientation.portrait ? 24.h : 24,
                  ),
                  width: orientation == Orientation.portrait ? 288.w : 288,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigCircle(
                        number: 7,
                        onTap: () {
                          _controller.text += '7';
                        },
                      ),
                      BigCircle(
                        number: 8,
                        onTap: () {
                          _controller.text += '8';
                        },
                      ),
                      BigCircle(
                        number: 9,
                        onTap: () {
                          _controller.text += '9';
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                width: orientation == Orientation.portrait ? 288.w : 288,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: orientation == Orientation.portrait ? 23.w : 23
                      ),
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          'icons/del.svg',
                          height: orientation == Orientation.portrait
                              ? 24.h
                              : 24,
                          width: orientation == Orientation.portrait
                              ? 35.w
                              : 35,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    BigCircle(
                      number: 0,
                      onTap: () {
                        _controller.text += '0';
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: orientation == Orientation.portrait ? 23.w : 23
                      ),
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          'icons/del.svg',
                          height: orientation == Orientation.portrait
                              ? 24.h
                              : 24,
                          width: orientation == Orientation.portrait
                              ? 35.w
                              : 35,
                        ),
                        onTap: () {
                          if (_controller.text.length != 0){
                            _controller.text = _controller.text.substring(
                              0,
                              _controller.text.length - 1,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
