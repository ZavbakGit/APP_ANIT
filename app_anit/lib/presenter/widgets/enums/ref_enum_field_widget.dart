import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';

import 'ref_enum_dialog_widget.dart';

class RefEnumFieldWidget extends StatelessWidget {
  final RefEnum? refEnum;
  final String title;
  final String type;
  final String? titleDialog;
  final ValueChanged<RefEnum>? onChoice;

  const RefEnumFieldWidget({
    Key? key,
    required this.refEnum,
    required this.title,
    required this.type,
    this.titleDialog,
    this.onChoice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onChoice != null) {
          showDialog<RefEnum>(
            context: context,
            builder: (context) => SimpleDialog(
              title: Text(title),
              children: [
                RefEnumDialogWidget(
                  refEnum: refEnum,
                  titleDialog: titleDialog,
                  type: type,
                ),
              ],
            ),
          ).then((value) {
            if (value != null) {
              onChoice!(value);
            }
          });
        }
      },
      child: ListTile(
        title: Text(title),
        subtitle: Text(refEnum?.name ?? ''),
      ),
    );
  }
}
