import 'dart:math';
import 'dart:ui';

import 'package:budget_buddy/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration:  const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange // this updates the color of the circle on the top left 
                          ),
                        ),
                        Icon(
                          CupertinoIcons.person_fill,
                          color: Theme.of(context).colorScheme.outline, // if i wanted to change the icon logo color, instead you can write color: Colors.white (change the color white to whatever)
                          )
                      ],
                    ),
                    const SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.outline
                          )
                        ),
                        Text(
                          "Adam Farghaly",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.settings))
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,  // you can change the order of how you want the colors to appear for this container to appear, you can modifiy the colorScheme on home_screen
                  Theme.of(context).colorScheme.tertiary,
              ],
              transform: const GradientRotation(pi / 4),
              ),
                borderRadius: BorderRadius.circular(27),// this changes the shadow color of the container VV
                boxShadow: const [
                  BoxShadow(                        
                    blurRadius: 3, // this changes the blur radius of the shadow
                    color: Colors.grey,
                    offset:Offset(5,5)
                    )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Total Balance',
                    style:TextStyle(
                      fontSize:15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 12), // you can change the height of the text (Total Balance) from the top of the screen by changing the value of the height (10
                  const Text(
                    '\$25,000', // you can change the amount of money you want to appear on the screen
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child : const Center(
                                child: Icon(
                                  CupertinoIcons.arrow_down,
                                  color: Colors.greenAccent,
                                  size: 12,
                                )
                              ),
                            ),
                            const SizedBox(width: 7),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                              'Income ',
                              style:TextStyle(
                        fontSize:13,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                      ),
                        ),
                        Text(
                          '\$5,000.00',
                          style:TextStyle(
                        fontSize:15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ), 
                        ),
                              ],
                            )
                          ],
                        ),//below is the container for expenses, I copied the above container and adjusted the mainAxisAlignment and changed the name
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child : const Center(
                                child: Icon(
                                  CupertinoIcons.arrow_down,
                                  color: Color.fromARGB(255, 242, 1, 1),
                                  size: 12,
                                )
                              ),
                            ),
                            const SizedBox(width: 7),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                              'Expenses ',
                              style:TextStyle(
                        fontSize:13,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                      ),
                        ),
                        Text(
                          '\$824.14',
                          style:TextStyle(
                        fontSize:15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ), 
                        ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30), // this changes the height of Transactions and View all, higher in value will lower the text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //this allows the text below to be spaced out evenly, now each should be on the opposite side of the screen
              children: [
                Text(
                  'Transactions',
                  style:TextStyle(
                        fontSize:15,
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.bold
                      ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    'View All',
                    style:TextStyle(
                          fontSize:14,
                          color: Theme.of(context).colorScheme.outline, // if i dont like the color of the colorScheme, adjust by color: Colors.white (change the color white to whatever)
                          fontWeight: FontWeight.w400 //creates the boldness of the next, you can change the value to 600 to make it more bold
                        ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: transactionsData.length,
                itemBuilder: (context,  int i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: transactionsData[i]['color'],
                                        shape: BoxShape.circle
                                      ),
                                    ),
                                    transactionsData[i]['icon'],
                                    // const Icon(
                                    //   Icons.fastfood,
                                    //   color: Colors.white,
                                    //   )
                                  ],
                                ),
                                SizedBox(width: 12),
                                Text(
                                  transactionsData[i]['name'],
                                  style:TextStyle(
                            fontSize:14,
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                  transactionsData[i]['totalAmount'],
                                  style:TextStyle(
                            fontSize:14,
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.w400
                                                  ),
                                ),
                                Text(
                                  transactionsData[i]['date'],
                                  style:TextStyle(
                            fontSize:14,
                            color: Theme.of(context).colorScheme.outline,
                            fontWeight: FontWeight.w400
                                                  ),
                                ),
                                  ],
                                  )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}