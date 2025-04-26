import 'package:darlink/constants/Database_url.dart';
import 'package:darlink/layout/home_layout.dart';
import 'package:darlink/modules/admin/admin_dashboard.dart';
import 'package:darlink/modules/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:darlink/modules/authentication/register_screen.dart';


Future<void> main() async {
  runApp(const DarLinkApp());
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
}

class DarLinkApp extends StatelessWidget {
  const DarLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darlink',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
