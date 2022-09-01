import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';

import '../../../pages/search_catalog/catalog_search_dialod_page.dart';

void showDialogChoiceCatalog({
  required BuildContext context,
  required String type,
  required String title,
  required Function(RefCatalog refCatalog) choice,
}) {
  Navigator.push<RefCatalog>(
    context,
    MaterialPageRoute(
      builder: (context) => CatalogSearchDialogPage(
        type: type,
        title: title,
      ),
    ),
  ).then((val) {
    if (val != null) {
      choice(val);
    }
  });
}
