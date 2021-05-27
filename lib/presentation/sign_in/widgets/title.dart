import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      children: [
        Text(
          'ALL WORK ',
          style: themeData.textTheme.headline3!.copyWith(color: Colors.black87),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          'GIG FINDER ',
          style: themeData.textTheme.headline5!.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
