import 'package:flutter/material.dart';
import 'package:tapri/theme/app_theme.dart';

class Header extends StatefulWidget {
  Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(
            Icons.menu,
          ),
        ),
        Spacer(),
        Text(
          'Header',
        ),
        Spacer(),
        Icon(
          Icons.notifications,
        )
      ]),
    );
  }
}
