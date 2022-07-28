import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/styles.dart';

class DsText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;

  const DsText.headingOne(this.text,
      {super.key, TextAlign align = TextAlign.start})
      : style = heading1Style,
        alignment = align;

  const DsText.headingTwo(this.text,
      {super.key, TextAlign align = TextAlign.start})
      : style = heading2Style,
        alignment = align;
  const DsText.headingThree(this.text,
      {super.key, TextAlign align = TextAlign.start})
      : style = heading3Style,
        alignment = align;
  const DsText.headline(this.text,
      {super.key, TextAlign align = TextAlign.start})
      : style = headlineStyle,
        alignment = align;
  const DsText.subheading(this.text,
      {super.key, TextAlign align = TextAlign.start})
      : style = subheadingStyle,
        alignment = align;
  const DsText.caption(this.text,
      {super.key, TextAlign align = TextAlign.start})
      : style = captionStyle,
        alignment = align;

  DsText.body(this.text,
      {super.key,
      Color color = kcMediumGreyColor,
      TextAlign align = TextAlign.start})
      : style = bodyStyle.copyWith(color: color),
        alignment = align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: alignment,
    );
  }
}
