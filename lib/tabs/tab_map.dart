import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'Desc_screen.dart';
import 'settings_screen.dart';
import 'share_screen.dart';

final List<Map<String, dynamic>> pageDetails = [
  {
    'pageName': '/home',
    'title': 'Home',
    'navigationBarColor': Colors.blue.shade200,
    'bottom_color': Colors.blue.shade600
  },
  {
    'pageName': '/desc',
    'title': 'Description',
    'navigationBarColor': Colors.green.shade200,
    'bottom_color': Colors.green.shade600
  },
  {
    'pageName': '/settings',
    'title': 'Settings',
    'navigationBarColor': Colors.amber.shade200,
    'bottom_color': Colors.amber.shade600
  },
];
