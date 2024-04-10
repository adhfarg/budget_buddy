import 'package:flutter/material.dart';
import 'screens/home/views/home_screen.dart';


class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Budget Buddy",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.white70,
          onBackground: Colors.black,
          primary: Color.fromARGB(255, 0, 83, 226),
          secondary: Color.fromARGB(255, 35, 228, 234),
          tertiary: Color(0xFFFF8D6C),
          outline: Color.fromARGB(255, 230, 3, 3),
          

        )
      ),
    home: HomeScreen(),
    );
  }
}