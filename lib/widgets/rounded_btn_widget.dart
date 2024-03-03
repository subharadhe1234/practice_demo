import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  final String name;
  final Icon? icon;
  final Color? color;
  final TextStyle? textStyle;
  final VoidCallback? voidCallback;

  RoundedBtn(
      {required this.name,
      this.icon,
      this.color = Colors.cyanAccent,
      this.textStyle,
      this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        voidCallback!();
      },
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Text(
                  name,
                  style: textStyle,
                )
              ],
            )
          : Text(
              name,
              style: textStyle,
            ),
      style:
      ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                 Radius.circular(21),


              )
          )


      ),
    );
  }
}
