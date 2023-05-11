import 'dart:html';

import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;
  double get scrrenShortestSide => MediaQuery.of(this).size.shortestSide;
  double get scrrenLongestSide => MediaQuery.of(this).size.longestSide;
  double percentWidth(double percent) => width * percent;
  double percentHeight(double percent) => height * percent;

  // double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
  // double get navigationBarHeight => MediaQuery.of(this).padding.bottom;
  // double get navigationBarWidth => MediaQuery.of(this).padding.right;
  // double get navigationBarTop => MediaQuery.of(this).padding.top;
  // double get navigationBarLeft => MediaQuery.of(this).padding.left;
}
