//Generated code

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<ResponsePingServer>> _pingGet() {
    final $url = '/ping';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResponsePingServer, ResponsePingServer>($request);
  }

  @override
  Future<Response<RefToCatalog>> _catalogsTypeGuidGet(
      {required String? type, required String? guid}) {
    final $url = '/catalogs/${type}/${guid}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RefToCatalog, RefToCatalog>($request);
  }
}