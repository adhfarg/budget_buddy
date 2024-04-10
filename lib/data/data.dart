import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// this is my mock up data will still figure out how to implant peoples data to automatically show up and keep adding for them
List<Map<String, dynamic>> transactionsData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.burger, color: Colors.white),
    'color': Colors.yellow,
    'name': 'Food',
    'totalAmount': '-\$28.80',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white),
        'color': Colors.purple,
    'name': 'Shopping',
    'totalAmount': '-\$201.80',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white),
        'color': Colors.green,
    'name': 'Health',
    'totalAmount': '-\$68.80',
    'date': 'Yesterday',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.plane, color: Colors.white),
        'color': Colors.blue,
    'name': 'Travel',
    'totalAmount': '-\$431.80',
    'date': 'Yesterday',
  }
];