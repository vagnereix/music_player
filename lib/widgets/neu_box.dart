import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const NeuBox({
    Key? key,
    this.width,
    this.height,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 5),
            blurRadius: 15,
            color: Colors.grey.shade500,
          ),
          const BoxShadow(
            offset: Offset(-5, -5),
            blurRadius: 15,
            color: Colors.white,
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
