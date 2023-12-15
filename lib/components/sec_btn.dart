import 'package:flutter/material.dart';

class SecBtn extends StatelessWidget {
  SecBtn({Key? key, required this.onpress, required this.icon}) : super(key: key);

  final VoidCallback onpress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.primaryContainer,
          size: 20,
        ),
      ),
    );
  }
}
