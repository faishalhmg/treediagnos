import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:treediagnos/navbaritem.dart';
import 'package:treediagnos/routes/routers.dart';
import './tabs/tab_map.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  static const tabs = [
    ScaffoldWithNavBarTabItem(
      initialLocation: '/home',
      icon: Icon(Icons.home),
      label: 'home',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/desc',
      icon: Icon(Icons.list),
      label: 'description',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/settings',
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];
  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);
  int _locationToTabIndex(String location) {
    final index =
        tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      // go to the initial location of the selected tab (by index)

      context.go(tabs[tabIndex].initialLocation);
    }
  }

  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tabs[_currentIndex].label.toString(),
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // backgroundColor: pageDetails[_activePageIndex]['navigationBarColor'],
      ),
      body: widget.child,
      // PageView(
      //   controller: _pageController,
      //   scrollDirection: Axis.horizontal,
      //   onPageChanged: (index) {
      //     setState(() {
      //       _activePageIndex = index;
      //     });
      //   },
      //   children: [
      //     pageDetails[0]['pageName'],
      //     pageDetails[1]['pageName'],
      //     pageDetails[2]['pageName'],
      //   ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        color: Colors.blueAccent,
        backgroundColor: Colors.white10,
        height: 40,
        // color: pageDetails[_activePageIndex]['bottom_color'],
        // backgroundColor: pageDetails[_activePageIndex]['navigationBarColor'],

        onTap: (index) => _onItemTapped(context, index),
        items: [Icon(Icons.home), Icon(Icons.list), Icon(Icons.settings)],
      ),
    );
  }
}
