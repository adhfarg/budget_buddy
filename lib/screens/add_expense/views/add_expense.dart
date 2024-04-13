import 'package:budget_buddy/screens/add_expense/views/category_creation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController expenseController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    dateController.text = DateFormat('MM/dd/yyyy').format(DateTime
        .now()); // this line of code sets the date to the current date with a format i installed in the pubspec.yaml file
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context)
          .unfocus(), // closes the keyboard when you tap outside of the text field
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Padding(
          padding: const EdgeInsets.all(
              16.0), // changes location of the add expense text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Add Expense",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              // changes the space between the text and the text fields on the add expense page
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width *
                    0.7, // makes the top $ circle smaller adjust by make 0.7 larger or smaller
                child: TextFormField(
                  controller: expenseController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      FontAwesomeIcons.dollarSign,
                      size: 16,
                      color: Colors
                          .black, // change color of dollar sign on the add expense page
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide
                            .none // removes the border from the text field under the Add Expense, remove this line to have a border.
                        ),
                  ),
                ),
              ), // below starts the modifications for the 2nd box i created for the add expense page
              const SizedBox(height: 32),
              TextFormField(
                controller: categoryController,
                readOnly:
                    true, // this line of code makes the text field read only where the user cant type, remove if want to type in the text field
                onTap: () {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    FontAwesomeIcons
                        .list, // creates a list icon on the add expense page
                    size: 16,
                    color: Colors
                        .black, // change color of dollar sign on the add expense page
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        getCategoryCreation(context);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.plus,
                        size: 16,
                        color: Colors.black,
                      )),
                  hintText:
                      'Category', // this feature hintText allows the word "Category" to be displayed in the text field before the user types anything and disappears when the user starts typing
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          10), // changes the roundness of the text field for this widget
                      borderSide: BorderSide
                          .none // removes the border from the text field under the Add Expense, remove this line to have a border.
                      ),
                ),
              ), // below starts the modifications for the 3rd box i created for the add expense page
              const SizedBox(height: 16),
              TextFormField(
                controller: dateController,
                textAlignVertical: TextAlignVertical
                    .center, // this line of code centers the text in the text field
                readOnly:
                    true, // this line of code makes the text field read only where the user cant type
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(
                          days:
                              365)) // this line of code allows the user to select a date from the calendar
                      );

                  if (newDate != null) {
                    setState(() {
                      dateController.text =
                          DateFormat('MM/dd/yyyy').format(newDate);
                      selectedDate = newDate;
                    });
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    FontAwesomeIcons
                        .clock, // creates a list icon on the add expense page
                    size: 16,
                    color: Colors
                        .black, // change color of dollar sign on the add expense page
                  ),
                  hintText:
                      'Date', // this feature hintText allows the word "Category" to be displayed in the text field before the user types anything and disappears when the user starts typing
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          10), // changes the roundness of the text field for this widget
                      borderSide: BorderSide
                          .none // removes the border from the text field under the Add Expense, remove this line to have a border.
                      ),
                ),
              ),
              const SizedBox(
                  height:
                      32), // adjust the space between the text fields and the save button on the add expense page
              SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10) // changes the roundness of the save button on the add expense page
                            )),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              20 // changes the size of the text on the save button on the add expense page
                          ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
