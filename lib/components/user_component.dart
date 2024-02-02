import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const UserComponent({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: Theme.of(context).colorScheme.tertiary),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 10),
                    Text(text)
                  ]),
            )));
  }
}
