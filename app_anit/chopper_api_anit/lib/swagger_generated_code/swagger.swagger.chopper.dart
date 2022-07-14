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
  Future<Response<dynamic>> _taskPost({required Task? body}) {
    final $url = '/task';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Task>> _taskGuidGet({required String? guid}) {
    final $url = '/task/${guid}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response<Task>> _taskNewGet() {
    final $url = '/task_new';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response<List<TaskItem>>> _tasksUserGet({required String? guidUser}) {
    final $url = '/tasks_user';
    final $params = <String, dynamic>{'guidUser': guidUser};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<TaskItem>, TaskItem>($request);
  }

  @override
  Future<Response<RemoteConfig>> _loginGet() {
    final $url = '/login';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RemoteConfig, RemoteConfig>($request);
  }

  @override
  Future<Response<List<RefCatalog>>> _catalogsTypeSearchGet(
      {required String? search,
      required num? count,
      required num? offset,
      required String? type}) {
    final $url = '/catalogs/${type}/search';
    final $params = <String, dynamic>{
      'search': search,
      'count': count,
      'offset': offset
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<RefCatalog>, RefCatalog>($request);
  }

  @override
  Future<Response<List<RefEnum>>> _enumNameGet({required String? name}) {
    final $url = '/enum/${name}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RefEnum>, RefEnum>($request);
  }
}
