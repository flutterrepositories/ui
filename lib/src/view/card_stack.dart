import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardStack extends StatelessWidget {
  Widget content;
  Function? onTap;
  String? link;
  Color color;

  CardStack(
      {required this.color, required this.content, this.link, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
          color: color,
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              content,
              if (link != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      link!,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 7.0,
                      ),
                    ),
                  ],
                )
            ]),
          )),
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
    );
  }
}
