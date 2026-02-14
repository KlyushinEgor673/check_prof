import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum InputTypeCustom { text, password, date }

class Input extends StatefulWidget {
  const Input({
    super.key,
    this.title,
    required this.errorText,
    required this.hintText,
    required this.controller,
    required this.inputType,
    this.startError,
  });

  final String? title;
  final String errorText;
  final String hintText;
  final TextEditingController controller;
  final InputTypeCustom inputType;
  final String? startError;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _focusedNode = FocusNode();
  bool _isFocus = false;
  bool _isError = false;
  bool _isOpen = false;
  String _oldValue = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusedNode.addListener(() {
      if (_focusedNode.hasFocus) {
        setState(() {
          _isError = false;
          _isFocus = _focusedNode.hasFocus;
        });
      } else {
        if (widget.controller.text.isEmpty) {
          setState(() {
            _isError = true;
          });
        }
        setState(() {
          _isFocus = _focusedNode.hasFocus;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Column(
      children: [
        if (widget.title != null)
          Container(
            width: orientation == Orientation.portrait
                ? 335.w
                : MediaQuery.of(context).size.width * 0.7,
            margin: EdgeInsets.only(
              bottom: orientation == Orientation.portrait ? 8.h : 8,
            ),
            child: Text(
              widget.title!,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: orientation == Orientation.portrait ? 14.sp : 14,
                height: 20 / 14,
                letterSpacing: 0,
                color: Color.fromRGBO(147, 147, 150, 1),
              ),
            ),
          ),
        Container(
          width: orientation == Orientation.portrait
              ? 335.w
              : MediaQuery.of(context).size.width * 0.7,
          height: orientation == Orientation.portrait ? 48.h : 48,
          decoration: BoxDecoration(
            color: (_isError || widget.startError != null)
                ? Color.fromRGBO(253, 53, 53, 0.1)
                : Color.fromRGBO(245, 245, 249, 1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: (_isError || widget.startError != null)
                  ? Color.fromRGBO(253, 53, 53, 1)
                  : _isFocus
                  ? Color.fromRGBO(34, 84, 245, 0.5)
                  : Color.fromRGBO(235, 235, 235, 1),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: orientation == Orientation.portrait ? 14.w : 14,
                  ),
                  child: TextSelectionTheme(
                    data: TextSelectionThemeData(
                      cursorColor: Color.fromRGBO(26, 111, 238, 1),
                      selectionHandleColor: Color.fromRGBO(26, 111, 238, 1),
                      selectionColor: Color.fromRGBO(34, 84, 245, 0.5),
                    ),
                    child: TextField(
                      obscureText: widget.inputType == InputTypeCustom.password
                          ? _isOpen
                                ? false
                                : true
                          : false,
                      obscuringCharacter: '*',
                      controller: widget.controller,
                      focusNode: _focusedNode,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: orientation == Orientation.portrait
                              ? 15.sp
                              : 15,
                          height: 20 / 15,
                          letterSpacing: 0,
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: orientation == Orientation.portrait
                            ? 15.sp
                            : 15,
                        height: 20 / 15,
                        letterSpacing: 0,
                      ),
                      onChanged: (value) {
                        if (widget.inputType == InputTypeCustom.date) {
                          setState(() {
                            widget.controller.text = widget.controller.text
                                .replaceAll(RegExp('[^0-9.]'), '');
                          });
                          if (widget.controller.text.length > 10) {
                            setState(() {
                              widget.controller.text = widget.controller.text
                                  .substring(0, 10);
                            });
                          } else if (_oldValue.endsWith('.') &&
                              (widget.controller.text.length == 2 ||
                                  widget.controller.text.length == 5)) {
                            setState(() {
                              widget.controller.text = widget.controller.text
                                  .substring(0, _oldValue.length - 2);
                            });
                          } else if (widget.controller.text.length == 2 ||
                              widget.controller.text.length == 5) {
                            setState(() {
                              widget.controller.text += '.';
                            });
                          } else if (widget.controller.text.endsWith('.') &&
                              (widget.controller.text.length != 3 &&
                                  widget.controller.text.length != 6)) {
                            setState(() {
                              widget.controller.text = widget.controller.text
                                  .substring(
                                    0,
                                    widget.controller.text.length - 1,
                                  );
                            });
                          }
                          setState(() {
                            _oldValue = widget.controller.text;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ),
              if (widget.inputType == InputTypeCustom.password)
                Padding(
                  padding: EdgeInsets.only(
                    right: orientation == Orientation.portrait ? 15.w : 15,
                    top: 0,
                    bottom: 0,
                  ),
                  child: Center(
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        _isOpen ? 'icons/eye-open.svg' : 'icons/eye-close.svg',
                        package: 'time_ui_kit',
                        height: orientation == Orientation.portrait ? 20.h : 20,
                        width: orientation == Orientation.portrait ? 20.w : 20,
                        color: Colors.black,
                      ),
                      onTap: () {
                        setState(() {
                          _isOpen = !_isOpen;
                        });
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (_isError || widget.startError != null)
          Container(
            width: orientation == Orientation.portrait ? 335.w : 335,
            margin: EdgeInsets.only(
              top: orientation == Orientation.portrait ? 8.h : 8,
            ),
            child: Text(
              widget.startError ?? widget.errorText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: orientation == Orientation.portrait ? 14.sp : 14,
                height: 20 / 14,
                letterSpacing: 0,
                color: Color.fromRGBO(253, 53, 53, 1),
              ),
            ),
          ),
      ],
    );
  }
}
