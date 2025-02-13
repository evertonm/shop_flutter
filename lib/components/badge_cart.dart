import 'package:flutter/material.dart';

class BadgeCart extends StatelessWidget {
  final Widget child;
  final String value;
  final Colors? color;

  const BadgeCart({
    required this.child,
    required this.value,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 4,
          top: 2,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.secondary,
            ),
            constraints: const BoxConstraints(
              minHeight: 16,
              minWidth: 16,
            ),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 10,                
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
