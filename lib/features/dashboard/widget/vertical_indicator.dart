import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/dimensions.dart';

class VerticalGradientIndicator extends StatelessWidget {
  final double topOffset;

  const VerticalGradientIndicator({super.key, required this.topOffset});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 4,
      top: topOffset,
      child: Stack(
        children: [
          Container(
            height: 187,
            width: Dimensions.paddingSizeExtraSmall,
            decoration: BoxDecoration(
              color: const Color(0xFFB6B8D0),
              borderRadius: BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
            ),
          ),

          Positioned(
            top: topOffset,
            child: Container(
              height: 40,
              width: Dimensions.paddingSizeExtraSmall,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF4E91FD), Color(0xFF080B7F)],
                ),
                borderRadius: BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
