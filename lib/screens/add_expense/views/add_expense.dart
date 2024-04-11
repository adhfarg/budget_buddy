import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:() => FocusScope.of(context).unfocus(), // closes the keyboard when you tap outside of the text field
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // changes location of the add expense text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Add Expense",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                  ),
              ),
               // changes the space between the text and the text fields on the add expense page
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7, // makes the top $ circle smaller adjust by make 0.7 larger or smaller
                child: TextFormField(
                
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.dollarSign, size: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(),
              const SizedBox(height: 16),
              TextFormField(),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Save'
                )
              )
            ],
          ),
        ),
        
      ),
    );
  }
}