import 'package:flutter/material.dart';

class EnumChoiceDialog extends StatelessWidget {
  final List<String> list;
  final int groupValue;

  const EnumChoiceDialog({
    Key? key,
    required this.list,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list
          .asMap()
          .entries
          .where((element) => element.value != 'swaggerGeneratedUnknown')
          .map((it) => ItemWidget(
                groupValue: groupValue,
                title: it.value,
                value: it.key,
              ))
          .toList(),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String title;
  final int value;
  final int groupValue;

  const ItemWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: RadioListTile<int>(
        groupValue: groupValue,
        title: Text(title),
        value: value,
        onChanged: (val) {
          Navigator.of(context).pop(val);
        },
      ),
    );
  }
}
