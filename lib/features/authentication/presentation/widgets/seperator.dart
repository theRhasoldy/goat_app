import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';

class Sep extends StatelessWidget {
  const Sep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(children: <Widget>[
        Row(children: <Widget>[
          Expanded(
            child: Container(
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
            child: Container(
                margin: const EdgeInsets.only(left: 20.0),
                child: Divider(
                  color: lightColorScheme.outline,
                )),
          ),
        ]),
      ]),
    );
  }
}
