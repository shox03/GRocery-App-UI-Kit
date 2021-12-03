import 'dart:ui';

import "package:flutter/material.dart";
import 'package:grocery/application/ui/more_page/configurations/colors.dart';

class FrostedGlassBox extends StatelessWidget {
  final double height, width;
  final String image;
  final Widget child;
  final Alignment alignment;
  final double opacityy;

  // ignore: use_key_in_widget_constructors
  const FrostedGlassBox({
    required this.image,
    required this.height,
    required this.width,
    required this.child,
    required this.alignment,
    required this.opacityy,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.9,
              child: Image.asset(
                image,
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            BackdropFilter(
              blendMode: BlendMode.srcIn,
              filter: ImageFilter.blur(
                sigmaX: 45.5,
                sigmaY: 45.5,
              ),
              child: Container(
                alignment: alignment,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                     scaffoldColor,

                     scaffoldColor.withOpacity(opacityy),
                    ],
                  ),
                ),
                width: width,
                height: height,
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
