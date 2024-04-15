import 'package:budget_buddy/screens/home/blocs/get_expenses_bloc/get_expenses_bloc.dart';
import 'package:expense_repository/expense_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Budget Buddy",
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
        background: Colors.white70,
        onBackground: Colors.black,
        primary: Color.fromARGB(255, 0, 83, 226),
        secondary: Color.fromARGB(255, 35, 228, 234),
        tertiary: Color(0xFFFF8D6C),
        outline: Color.fromARGB(255, 230, 3, 3),
      )),
      home: BlocProvider(
        create: (context) =>
            GetExpensesBloc(FirebaseExpenseRepo())..add(const GetExpenses()),
        child: const HomeScreen(),
      ),
    );
  }
}
