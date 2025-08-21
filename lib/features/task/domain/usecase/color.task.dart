import 'package:flutter/material.dart';

class ColorTask {
  final Color color;
  bool isSelected;

  ColorTask({
    required this.color,
    this.isSelected = false,
  });

  static List<ColorTask> colors = [
    ColorTask(color: const Color(0xFFFFEBEE)),
    ColorTask(color: const Color(0xFFEDE7F6)),
    ColorTask(color: const Color(0xFFECEFF1)),
    ColorTask(color: const Color(0xFFF1F8E9)),
  ];
}