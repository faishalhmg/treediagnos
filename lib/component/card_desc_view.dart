import 'package:flutter/material.dart';

import 'package:treediagnos/data/Card_map2.dart';

class CardViewDesc extends StatelessWidget {
  String no;
  CardViewDesc({
    Key? key,
    required this.no,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.0,
      runSpacing: 4.0,
      children: [
        Text(
          cardDetails2[int.parse(no)]['title'],
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Center(
            child: Card(
          child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
                  child: Image.asset(cardDetails2[int.parse(no)]['image']))),
        )),
        Center(
          child: Card(
            child: SizedBox(
                width: 500,
                height: 100,
                child: Center(
                    child: Text(
                  cardDetails2[int.parse(no)]['desc'],
                  textAlign: TextAlign.justify,
                ))),
          ),
        ),
        Center(
          child: BackButton(
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }
}
