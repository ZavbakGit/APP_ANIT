class CatalogModel {
  String kind;
  String code;
  String name;
  CatalogModel? parent;

  CatalogModel({
    required this.kind,
    required this.code,
    required this.name,
    this.parent,
  });

  @override
  String toString() => 'CatalogModel(kind: $kind, code: $code, name: $name)';
}
