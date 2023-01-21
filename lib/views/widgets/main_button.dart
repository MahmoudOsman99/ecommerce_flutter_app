import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? radius;
  const MainButton(
      {super.key, required this.text, required this.onPressed, this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: MaterialButton(
        color: Colors.red,
        minWidth: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15),
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
