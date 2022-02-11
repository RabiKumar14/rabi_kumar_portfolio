import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double height;
  final double width;
  const CustomButton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    bool _elevated = true;

    return GestureDetector(
      onTap: () {
        setState(() {
          _elevated = !_elevated;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: _elevated
              ? const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                      offset: Offset(4, 4),
                      spreadRadius: 1),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(-4, -4),
                  ),
                ]
              : null,
        ),
      ),
    );
  }
}
