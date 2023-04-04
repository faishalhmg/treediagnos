import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:treediagnos/component/card_view.dart';

class indentifyMenu extends StatelessWidget {
  const indentifyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          cardView(
            no: 4,
          ),
          cardView(
            no: 5,
          ),
        ],
      ),
    );
  }
}
