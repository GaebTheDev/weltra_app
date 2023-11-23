import 'package:flutter/material.dart';
import 'package:weltra_app/constants.dart';

class CircleHeader1 extends StatelessWidget {
  const CircleHeader1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: HeaderClipper(),
          child: Container(
            height: screenHeight(context) / 5,
            width: double.infinity,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double h = size.height;
    double w = size.width;
    var path = Path();
    path.lineTo(0, h / 1.1);
    path.quadraticBezierTo(w / 6, h / 1.1, w / 3.2, h / 1.5);
    path.quadraticBezierTo(w / 1.5, h, w, h / 1.4);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
