import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:treediagnos/data/Card_map.dart';

class cardView extends StatelessWidget {
  int no;
  cardView({
    Key? key,
    required this.no,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(cardDetails[no]['title']),
        Center(
            child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(80),
            onTap: (() {
              GoRouter.of(context).go(cardDetails[no]['pageName']);
            }),
            child: SizedBox(
              width: 300,
              height: 200,
              child: Column(
                children: [
                  Center(
                    child: Icon(cardDetails[no]['iconButton']),
                  ),
                  Center(
                    child: Text(cardDetails[no]['titleButton']),
                  ),
                ],
              ),
            ),
          ),
        )),
      ],
    );
  }
}
