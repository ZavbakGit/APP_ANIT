import 'package:app_anit/presenter/widgets/catalogs/ref_catalog_dialog_widget.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';

class RefCatalogFieldWidget extends StatelessWidget {
  final String type;
  final RefCatalog? refCatalog;
  final String title;
  final String? errorTitle;
  final ValueChanged<RefCatalog>? onChoice;

  const RefCatalogFieldWidget({
    Key? key,
    required this.refCatalog,
    required this.title,
    this.errorTitle,
    required this.type,
    this.onChoice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onChoice != null) {
          Navigator.push<RefCatalog>(
            context,
            MaterialPageRoute(
              builder: (context) => RefCatalogDialogWidget(
                type: type,
                titleDialog: title,
              ),
            ),
          ).then((value) {
            if (value != null) {
              onChoice!(value);
            }
          });
        }
      },
      child: ListTile(
        title: Row(
          children: [
            Expanded(child: Text(title)),
            const SizedBox(
              width: 8,
            ),
            if (errorTitle != null)
              Expanded(
                  child: Text(errorTitle!,
                      style: TextStyle(color: Colors.red[300]))),
          ],
        ),
        subtitle: Text(refCatalog?.name ?? ''),
      ),
    );
  }
}
