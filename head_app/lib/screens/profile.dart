import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/data/user_data.dart';
import 'package:provider/provider.dart';
import 'package:time_ui_kit/time_ui_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late Client _client;
  late UserData _userData;
  bool _isLoaded = false;
  late String name;
  late String email;
  final _storage = FlutterSecureStorage();
  late bool _isActive;

  Future<void> _init() async {
    String? userId = await _storage.read(key: 'userId');
    final response = await _userData.info(userId!);
    String? valueToggle = await _storage.read(key: 'toggle');
    _isActive = valueToggle == null ? false : true;
    setState(() {
      name = response.firstname;
      email = response.email;
      _isLoaded = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _client = Provider.of(context, listen: false);
    _userData = UserData(_client);
    _init();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final width = MediaQuery.of(context).size.width;
    return _isLoaded
        ? Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: ListView(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top:
                            (orientation == Orientation.portrait ? 76.h : 76) -
                            MediaQuery.of(context).padding.top,
                      ),
                      width: orientation == Orientation.portrait
                          ? 335.w
                          : width * 0.7,
                      child: Column(
                        spacing: orientation == Orientation.portrait ? 8.h : 8,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: orientation == Orientation.portrait
                                  ? 24.sp
                                  : 24,
                              height: 28 / 24,
                              letterSpacing: 0.33,
                            ),
                          ),
                          Text(
                            email,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: orientation == Orientation.portrait
                                  ? 16.sp
                                  : 16,
                              height: 20 / 16,
                              letterSpacing: -0.32,
                              color: Color.fromRGBO(147, 147, 150, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: orientation == Orientation.portrait
                          ? 335.w
                          : width * 0.7,
                      margin: EdgeInsets.only(
                        top: orientation == Orientation.portrait ? 24.h : 24,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: orientation == Orientation.portrait
                                    ? 64.h
                                    : 64,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'images/order.png',
                                      height:
                                          orientation == Orientation.portrait
                                          ? 32.h
                                          : 32,
                                      width: orientation == Orientation.portrait
                                          ? 32.w
                                          : 32,
                                    ),
                                    SizedBox(
                                      width: orientation == Orientation.portrait
                                          ? 20.w
                                          : 20,
                                    ),
                                    Text(
                                      'Мои заказы',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            orientation == Orientation.portrait
                                            ? 17.sp
                                            : 17,
                                        height: 24 / 17,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: orientation == Orientation.portrait
                                    ? 64.h
                                    : 64,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'images/settings.png',
                                      height:
                                          orientation == Orientation.portrait
                                          ? 32.h
                                          : 32,
                                      width: orientation == Orientation.portrait
                                          ? 32.w
                                          : 32,
                                    ),
                                    SizedBox(
                                      width: orientation == Orientation.portrait
                                          ? 20.w
                                          : 20,
                                    ),
                                    Text(
                                      'Уведомления',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            orientation == Orientation.portrait
                                            ? 17.sp
                                            : 17,
                                        height: 24 / 17,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: orientation == Orientation.portrait
                                          ? 112.w
                                          : 112,
                                    ),
                                    ToggleController(
                                      isActive: _isActive,
                                      onTap: () async{
                                        if (_isActive){
                                          await _storage.delete(key: 'toggle');
                                        } else {
                                          await _storage.write(key: 'toggle', value: 'true');
                                        }
                                        setState(() {
                                          _isActive = !_isActive;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: orientation == Orientation.portrait ? 176.h : 176,
                      ),
                      child: Text(
                        'Политика конфиденциальности',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: orientation == Orientation.portrait
                              ? 15.sp
                              : 15,
                          height: 20 / 15,
                          letterSpacing: 0,
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: orientation == Orientation.portrait ? 24.h : 24,
                      ),
                      child: Text(
                        'Пользовательское соглашение',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: orientation == Orientation.portrait
                              ? 15.sp
                              : 15,
                          height: 20 / 15,
                          letterSpacing: 0,
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: orientation == Orientation.portrait ? 24.h : 24,
                      ),
                      child: GestureDetector(
                        child: Text(
                          'Выход',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: orientation == Orientation.portrait
                                ? 15.sp
                                : 15,
                            height: 20 / 15,
                            letterSpacing: 0,
                            color: Color.fromRGBO(253, 53, 53, 1),
                          ),
                        ),
                        onTap: () async{
                          await _storage.delete(key: 'token');
                          await _storage.delete(key: 'userId');
                          await _storage.delete(key: 'toggle');
                          await _storage.delete(key: 'password');
                          Navigator.pushNamed(context, '/entrance');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Tabbar(
              activeIndex: 3,
              zeroCallback: () {
                Navigator.pushNamed(context, '/head');
              },
              oneCallback: () {
                Navigator.pushNamed(context, '/catalog');
              },
              twoCallback: () {
                Navigator.pushNamed(context, '/projects');
              },
              threeCallback: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: CircularProgressIndicator(
                backgroundColor: Color.fromRGBO(241, 241, 241, 1),
                color: Color.fromRGBO(26, 111, 238, 1),
              ),
            ),
          );
  }
}
