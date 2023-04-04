import 'package:flutter/material.dart';
import 'package:treediagnos/component/card_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          cardView(
            no: 0,
          ),
          cardView(
            no: 1,
          ),
          // // Card(
          // //   child: InkWell(
          // //     splashColor: Colors.blue.withAlpha(30),
          // //     onTap: () {
          // //       context.go('/desc');
          // //     },
          // //     child: SizedBox(
          // //       height: 300,
          // //       width: 200,
          // //     ),
          // //   ),
          // )
        ],
      ),
    );
  }
}
