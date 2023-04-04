import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:treediagnos/data/Card_map2.dart';

class DescriptScreen extends StatelessWidget {
  const DescriptScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Wrap(
              children: [
                Card(
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        context.goNamed("descview",
                            params: {'desc': index.toString()});
                        // CardViewDesc(no: index.toString());
                      },
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child:
                            Center(child: Text(cardDetails2[index]['title'])),
                      ),
                      // child: Text(cardDetails2[i]['title']),
                    ))
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: cardDetails2.length,
        padding: const EdgeInsets.all(8));
    // return Wrap(
    //   children: [
    //     for (int i = 0; i <= 15; i++)
    //       Card(
    //           clipBehavior: Clip.hardEdge,
    //           child: InkWell(
    //             splashColor: Colors.blue.withAlpha(30),
    //             onTap: () {
    //               debugPrint('Card tapped.');
    //             },
    //             child: SizedBox(
    //               width: 300,
    //               height: 100,
    //               child: Center(child: Text(cardDetails2[i]['title'])),
    //             ),
    //             // child: Text(cardDetails2[i]['title']),
    //           ))
    //   ],
    // );
  }
}
