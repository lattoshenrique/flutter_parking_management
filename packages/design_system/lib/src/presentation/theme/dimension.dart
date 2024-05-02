import 'package:flutter/material.dart';

import 'responsive/responsive.dart';

const int kDefaultScalingFactor = 8;

class Dimension {
  static const xxs = Dimension(0.5);

  static const xs = Dimension(1);

  static const sm = Dimension(2);

  static const md = Dimension(3);

  static const lg = Dimension(4);

  static const xl = Dimension(5);

  static const xxl = Dimension(6);

  static const xxxl = Dimension(7);

  final double _val;

  double get value => _val * factor;

  final int factor;

  const Dimension(this._val, {this.factor = kDefaultScalingFactor});

  Dimension operator -(Dimension other) =>
      Dimension((value - other.value) / factor);

  Dimension operator +(Dimension other) =>
      Dimension((value + other.value) / factor);

  Dimension operator *(double operand) => Dimension(value * operand);
}

extension DimensionExtensions on Dimension {
  double get width => SizeConfig.widthMultiplier * value;

  double get height => SizeConfig.heightMultiplier * value;

  SizedBox get vertical => SizedBox(height: height);

  SizedBox get horizontal => SizedBox(width: width);

  EdgeInsets get paddingAll =>
      EdgeInsets.symmetric(horizontal: width, vertical: height);

  EdgeInsets get verticalPadding => paddingBottom + paddingTop;

  EdgeInsets get horizontalPadding => leftPadding + rightPadding;

  EdgeInsets get paddingTop => EdgeInsets.only(top: height);

  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: height);

  EdgeInsets get leftPadding => EdgeInsets.only(left: width);

  EdgeInsets get rightPadding => EdgeInsets.only(right: width);
}
