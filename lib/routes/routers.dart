import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treediagnos/tab_bar_screen.dart';
import 'package:treediagnos/tabs/Desc_screen.dart';
import 'package:treediagnos/tabs/home_screen.dart';
import 'package:treediagnos/tabs/settings_screen.dart';
import 'package:treediagnos/view/ImageIdentifyView.dart';
import 'package:treediagnos/view/RealTimeView.dart';
import 'package:treediagnos/view/camera_view.dart';
import 'package:treediagnos/view/fromImage_view.dart';

import '../component/card_desc_view.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return TabBarScreen(
            child: child,
          );
        },
        routes: [
          GoRoute(
              path: '/home',
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: const HomeScreen()),
              routes: [
                GoRoute(
                  path: 'realtime',
                  builder: (context, state) => const realTimeMenu(),
                ),
                GoRoute(
                  path: 'imageidentify',
                  builder: (context, state) => const indentifyMenu(),
                ),
                GoRoute(
                  path: 'cameraview',
                  builder: (context, state) => const Camera_View(),
                ),
                GoRoute(
                  path: 'fromimage',
                  builder: (context, state) => const FromImageView(),
                ),
                GoRoute(
                  path: 'fromimageident',
                  builder: (context, state) => const FromImageView(),
                ),
                GoRoute(
                  path: 'fromimagemulti',
                  builder: (context, state) => const FromImageView(),
                ),
              ]),
          GoRoute(
              path: '/',
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: const HomeScreen()),
              routes: [
                GoRoute(
                  path: 'realtime',
                  builder: (context, state) => const realTimeMenu(),
                ),
                GoRoute(
                  path: 'imageidentify',
                  builder: (context, state) => const indentifyMenu(),
                ),
                GoRoute(
                  path: 'cameraview',
                  builder: (context, state) => const Camera_View(),
                ),
                GoRoute(
                  path: 'fromimage',
                  builder: (context, state) => const FromImageView(),
                ),
                GoRoute(
                  path: 'fromimageident',
                  builder: (context, state) => const FromImageView(),
                ),
                GoRoute(
                  path: 'fromimagemulti',
                  builder: (context, state) => const FromImageView(),
                ),
              ]),
          GoRoute(
              path: '/desc',
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: const DescriptScreen()),
              routes: [
                GoRoute(
                  path: 'descview/:desc',
                  name: 'descview',
                  builder: (context, state) => CardViewDesc(
                    no: state.params['desc']!,
                  ),
                )
              ]),
          GoRoute(
            path: '/settings',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: const SettingsScreen()),
          ),
        ])
  ],
);
// GoRoute(
//         path: '/',
//         builder: (BuildContext context, GoRouterState state) {
//           return TabBarScreen();
//         },
//         routes: [
//           ShellRoute(
//               routes: [
//                 GoRoute(
//                   path: 'realtime',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return realTimeMenu();
//                   },
//                 ),
//                 GoRoute(
//                   path: 'cameraview',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return Camera_View();
//                   },
//                 ),
//                 GoRoute(
//                   path: 'fromimage',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return FromImageView();
//                   },
//                 ),
//                 GoRoute(
//                   path: 'imageidentify',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return indentifyMenu();
//                   },
//                 ),
//               ],
//               builder: ((context, state, child) {
//                 return HomeScreen();
//               })),
//           ShellRoute(
//               routes: [
//                 GoRoute(
//                   path: 'home',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return HomeScreen();
//                   },
//                 ),
//                 GoRoute(
//                   path: 'desc',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return DescriptScreen();
//                   },
//                 ),
//                 GoRoute(
//                   path: 'settings',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return SettingsScreen();
//                   },
//                 ),
//               ],
//               builder: ((context, state, child) {
//                 return TabBarScreen();
//               })),
//         ]),
