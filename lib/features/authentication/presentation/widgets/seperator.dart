import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';

class Sep extends StatelessWidget {
  const Sep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
          child: new Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Divider(
                color: lightColorScheme.outline,
              )),
        ),
        Text(
          "OR",
          style: TextStyle(color: lightColorScheme.primary),
        ),
        Expanded(
          child: new Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Divider(
                color: lightColorScheme.outline,
              )),
        ),
      ]),
    ]);
  }
}
