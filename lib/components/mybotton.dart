import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? ontap;
  final Widget? child;

  const MyButton({
    super.key,
    required this.ontap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        padding: const EdgeInsets.all(25),
        child: child,
      ),
    );
  }
}
