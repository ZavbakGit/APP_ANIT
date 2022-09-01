import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';

import '../../disign_system/ui_helpers.dart';
import '../../pages/search_catalog/catalog_search_dialod_page.dart';

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
              builder: (context) => CatalogSearchDialogPage(
                type: type,
                title: title,
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
            verticalSpaceRegular,
            if (errorTitle != null)
              Expanded(
                child: Text(
                  errorTitle!,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Theme.of(context).colorScheme.error),
                ),
              ),
          ],
        ),
        subtitle: Text(refCatalog?.name ?? ''),
      ),
    );
  }
}
