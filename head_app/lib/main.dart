import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:head_app/screens/backet.dart';
import 'package:head_app/screens/catalog.dart';
import 'package:head_app/screens/entrance.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_app/screens/head.dart';
import 'package:head_app/screens/password.dart';
import 'package:head_app/screens/profile.dart';
import 'package:head_client_server/client.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final client = Client();
  final storage = FlutterSecureStorage();
  String? token = await storage.read(key: 'token');
  print('token $token');
  if (token != null) {
    client.setToken(token);
  }
  runApp(
    Provider(
      create: (context) => client,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, _) {
          return MaterialApp(
            initialRoute: '/',
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/':
                  if (token == null) {
                    return PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Entrance(),
                    );
                  }
                  return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Profile(),
                  );
                case '/entrance':
                  return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Entrance(),
                  );
                case '/password':
                  final args = settings.arguments as Map;
                  return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Password(isNew: args['isNew']),
                  );
                case '/profile':
                  return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Profile(),
                  );
                case '/catalog':
                  return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Catalog(),
                  );
                case '/head':
                  return PageRouteBuilder(pageBuilder: (_, __, ___) => Head());
                case '/backet':
                  return PageRouteBuilder(pageBuilder: (_, __, ___) => Backet());
              }
            },
          );
        },
      ),
    ),
  );
}
