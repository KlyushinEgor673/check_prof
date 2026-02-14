import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/data/user_data.dart';
import 'package:head_client_server/presentation/user/user_presentation.dart';
import 'package:provider/provider.dart';
import 'package:time_ui_kit/widgets/input.dart';
import 'package:time_ui_kit/widgets/buttons/big_button.dart';
import 'package:time_ui_kit/widgets/buttons/log_in_button.dart';
import 'package:time_ui_kit/widgets/snack_bar_custom.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Entrance extends StatefulWidget {
  const Entrance({super.key});

  @override
  State<Entrance> createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

  bool _isCheck = false;

  void _check() {
    if (_controllerPassword.text.length > 7 &&
        _controllerEmail.text.contains(RegExp('[@.]'))) {
      setState(() {
        _isCheck = true;
      });
    } else {
      setState(() {
        _isCheck = false;
      });
    }
  }

  late Client _client;
  late UserData _userData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerEmail.addListener(() => _check());
    _controllerPassword.addListener(() => _check());
    _client = Provider.of<Client>(context, listen: false);
    _userData = UserData(_client);
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top:
                      (orientation == Orientation.portrait ? 105.h : 105) -
                      MediaQuery.of(context).padding.top,
                ),
                width: orientation == Orientation.portrait
                    ? 335.w
                    : width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: orientation == Orientation.portrait ? 276.w : 276,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/hand.png',
                            height: orientation == Orientation.portrait
                                ? 32.h
                                : 32,
                            width: orientation == Orientation.portrait
                                ? 32.w
                                : 32,
                          ),
                          Text(
                            'Добро пожаловать!',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: orientation == Orientation.portrait
                                  ? 24.sp
                                  : 24,
                              height: 28 / 24,
                              letterSpacing: 0.33,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: orientation == Orientation.portrait ? 23.h : 23,
                      ),
                      width: orientation == Orientation.portrait
                          ? 335.w
                          : width * 0.7,
                      child: Text(
                        'Войдите, чтобы пользоваться функциями приложения',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: orientation == Orientation.portrait
                              ? 15.sp
                              : 15,
                          height: 20 / 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: orientation == Orientation.portrait ? 64.h : 64,
                        bottom: orientation == Orientation.portrait ? 14.h : 14,
                      ),
                      child: Input(
                        errorText: 'Заполните почту',
                        hintText: 'example@mail.com',
                        controller: _controllerEmail,
                        inputType: InputTypeCustom.text,
                        title: 'Вход по E-mail',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: orientation == Orientation.portrait ? 14.h : 14,
                      ),
                      child: Input(
                        errorText: 'Заполните пароль',
                        hintText: 'Пароль',
                        controller: _controllerPassword,
                        inputType: InputTypeCustom.password,
                        title: 'Пароль',
                      ),
                    ),
                    BigButton(
                      color: _isCheck
                          ? BigButtonColor.blue
                          : BigButtonColor.lightBlue,
                      onTap: _isCheck
                          ? () async {
                              try {
                                final request = AuthRequest(
                                  identity: _controllerEmail.text,
                                  password: _controllerPassword.text,
                                );
                                final response = await _userData.auth(request);
                                final storage = FlutterSecureStorage();
                                await storage.write(
                                  key: 'token',
                                  value: response.token,
                                );
                                await storage.write(
                                  key: 'userId',
                                  value: response.record.id,
                                );
                                Navigator.pushNamed(
                                  context,
                                  '/password',
                                  arguments: {'isNew': true},
                                );
                              } catch (e) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Align(
                                      alignment: Alignment.topCenter,
                                      child: SnackBarCustom(
                                        text: e.toString().substring(11),
                                        closeCallback: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    );
                                  },
                                );
                              }
                            }
                          : () {},
                      text: 'Далее',
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: orientation == Orientation.portrait ? 15.h : 15,
                          bottom: orientation == Orientation.portrait
                              ? 59.h
                              : 59,
                        ),
                        child: GestureDetector(
                          child: Text(
                            'Зарегистрироваться',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(32, 116, 242, 1),
                              fontSize: orientation == Orientation.portrait
                                  ? 15.sp
                                  : 15,
                              height: 20 / 15,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Или войдите с помощью',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: orientation == Orientation.portrait
                              ? 15.sp
                              : 15,
                          height: 20 / 15,
                          letterSpacing: 0,
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: orientation == Orientation.portrait
                            ? 16.h
                            : 16,
                      ),
                      child: LogInButton(isVk: true, onTap: () {}),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: orientation == Orientation.portrait ? 24.h : 24,
                      ),
                      child: LogInButton(isVk: false, onTap: () {}),
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
