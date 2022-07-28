import 'package:flutter/material.dart';

import '../../ds_ui.dart';

class AutoCompleteListItem extends StatelessWidget {
  final String state, city;
  final Function onTap;

  const AutoCompleteListItem(
      {Key? key, required this.state, required this.city, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(
            Icons.near_me,
            color: kcMediumGreyColor,
          ),
          onTap: () => onTap(),
          title: DsText.subheading(city),
          subtitle: DsText.caption(state),
        ),
        const Divider(
          indent: 50,
        )
      ],
    );
  }
}
