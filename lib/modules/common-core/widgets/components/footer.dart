import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Center(
        child: Text(
          S.of(context).copyright,
          style: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
