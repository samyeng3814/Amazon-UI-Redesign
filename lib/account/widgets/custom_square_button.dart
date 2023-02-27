import 'package:flutter/material.dart';

class CustomSquareButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final double dimension;
  const CustomSquareButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      required this.color,
      required this.dimension})
      : super(key: key);

  @override
  State<CustomSquareButton> createState() => _CustomSquareButtonState();
}

class _CustomSquareButtonState extends State<CustomSquareButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.dimension,
        width: widget.dimension,
        decoration: ShapeDecoration(
          color: widget.color,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        child: Center(child: widget.child),
      ),
    );
  }
}
