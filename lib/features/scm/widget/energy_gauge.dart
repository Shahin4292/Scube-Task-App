import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'dart:math';
import 'package:scube_task_app/utils/styles.dart';

class EnergyUsageWidget extends StatefulWidget {
  const EnergyUsageWidget({super.key});
  @override
  State<EnergyUsageWidget> createState() => _EnergyUsageWidgetState();
}

class _EnergyUsageWidgetState extends State<EnergyUsageWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 160,
          height: 160,
          child: CustomPaint(
            painter: EnergyGaugePainter(),
            child: Center(
              child: Column(
                mainAxisSize: .min,
                children: [
                  SizedBox(height: 100,),
                  Text(
                    '55.00',
                    style: interMedium.copyWith(
                      fontSize: 20,
                      color: AppColor.dukeBlue
                    ),
                  ),

                  Text(
                    'kWh',
                    style: interMedium.copyWith(
                      fontSize: 14,
                        color: AppColor.dukeBlue
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EnergyGaugePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * 0.82);
    final radius = size.width * 0.45;

    final backgroundPaint = Paint()
      ..color = AppColor.primary.withOpacity(0.2)
      ..strokeWidth = 17
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final foregroundPaint = Paint()
      ..color = AppColor.primary
      ..strokeWidth = 17
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      3.9,
      3,
      false,
      backgroundPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      2.5,
      5 * 0.55,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
