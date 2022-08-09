import 'package:app_anit/presenter/disign_system/saherd/styles.dart';
import 'package:flutter/material.dart';

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

  const DsText.text1(this.text, {super.key, TextAlign align = TextAlign.start})
      : style = Text1Style,
        alignment = align;
  const DsText.text2(this.text, {super.key, TextAlign align = TextAlign.start})
      : style = Text2Style,
        alignment = align;

  const DsText.text3(this.text, {super.key, TextAlign align = TextAlign.start})
      : style = Text3Style,
        alignment = align;

  const DsText.text4(this.text, {super.key, TextAlign align = TextAlign.start})
      : style = Text4Style,
        alignment = align;

  const DsText.text5(this.text, {super.key, TextAlign align = TextAlign.start})
      : style = Text5Style,
        alignment = align;

  const DsText.textButton(this.text,
      {super.key, TextAlign align = TextAlign.start})
      : style = TextButtonStyle,
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
