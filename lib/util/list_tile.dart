import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(trailing),
    );
  }
}