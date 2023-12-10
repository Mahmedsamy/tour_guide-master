import 'package:firebase_core/firebase_core.dart';
import 'package:tour_guide/layout/start_screen/start_screen.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:tour_guide/layout/onBoarding/tour_guide_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'layout/flutter_map/flutter_map_screen.dart';







void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      home: TourGuideScreen(),
      //StartScreen(),
      //MapLayout(title: '',),
    );
  }
}
