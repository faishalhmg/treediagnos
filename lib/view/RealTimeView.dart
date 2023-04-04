import 'package:flutter/material.dart';

import '../component/card_view.dart';

class realTimeMenu extends StatelessWidget {
  const realTimeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          cardView(
            no: 2,
          ),
          cardView(
            no: 3,
          ),
        ],
      ),
    );
  }
}
