import 'dart:ui';

import 'package:flutter/material.dart';


class RPSCustomPainter extends CustomPainter{
  Color? color;
  RPSCustomPainter({required this.color,});

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = color!
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    //paint0.shader =ui.Gradient.linear(Offset(size.width*0.51,size.height*0.99),Offset(size.width*0.51,size.height*0.03),[Color(0xffd54242),Color(0xffffffff)],[0.00,1.00]);


    Path path0 = Path();
    path0.moveTo(size.width*0.4900000,size.height*0.0300000);
    path0.lineTo(size.width*0.1250000,size.height*0.2900000);
    path0.lineTo(size.width*0.1125000,size.height*0.7400000);
    path0.lineTo(size.width*0.5000000,size.height*0.9900000);
    path0.lineTo(size.width*0.8975000,size.height*0.7625000);
    path0.lineTo(size.width*0.8875000,size.height*0.2925000);
    path0.lineTo(size.width*0.4900000,size.height*0.0300000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

