import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job/database/firebaseAuth/users_service.dart';
import 'package:flutter_job/themes/darkTheme.dart';
import 'package:provider/provider.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCkcfZEgSBGnO5V2dWpWTXFpSiz53OQXKI',
      appId: '1:358425870250:android:00cfd9770aa1e7b61f75d3',
      messagingSenderId: '358425870250',
      projectId: 'flutter-job-3409a',
      storageBucket: 'flutter-job-3409a.appspot.com',
    ),
  );
  runApp(const ThemeAppMaterial());
}

class ThemeAppMaterial extends StatelessWidget {
  const ThemeAppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value: AuthService().currentUser,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: dark,
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
