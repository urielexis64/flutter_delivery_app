import 'package:clean_architecture_app/presentation/splash/theme.dart';
import 'package:flutter/material.dart';

class DeliveryButton extends StatelessWidget {
  const DeliveryButton(
      {Key? key,
      required this.onTap,
      required this.text,
      this.padding = const EdgeInsets.all(12)})
      : super(key: key);

  final VoidCallback onTap;
  final String text;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: LinearGradient(colors: deliveryGradient)),
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.button!.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
