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
    final Uri $url = Uri.parse('/task');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Task>> _taskGuidGet({required String? guid}) {
    final Uri $url = Uri.parse('/task/${guid}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response<Task>> _taskNewGet() {
    final Uri $url = Uri.parse('/task_new');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response<List<TaskItem>>> _tasksUserGet({required String? guidUser}) {
    final Uri $url = Uri.parse('/tasks_user');
    final Map<String, dynamic> $params = <String, dynamic>{
      'guidUser': guidUser
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<TaskItem>, TaskItem>($request);
  }

  @override
  Future<Response<RemoteConfig>> _loginGet({
    String? token,
    String? deviceId,
  }) {
    final Uri $url = Uri.parse('/login');
    final Map<String, dynamic> $params = <String, dynamic>{
      'token': token,
      'deviceId': deviceId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<RemoteConfig, RemoteConfig>($request);
  }

  @override
  Future<Response<List<RefCatalog>>> _catalogsTypeSearchGet({
    required String? search,
    required num? count,
    required num? offset,
    required String? type,
  }) {
    final Uri $url = Uri.parse('/catalogs/${type}/search');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'count': count,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<RefCatalog>, RefCatalog>($request);
  }

  @override
  Future<Response<List<RefEnum>>> _enumNameGet({required String? name}) {
    final Uri $url = Uri.parse('/enum/${name}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<RefEnum>, RefEnum>($request);
  }

  @override
  Future<Response<List<Event>>> _eventsGet({required String? date}) {
    final Uri $url = Uri.parse('/events');
    final Map<String, dynamic> $params = <String, dynamic>{'date': date};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Event>, Event>($request);
  }

  @override
  Future<Response<Event>> _eventGuidGet({required String? guid}) {
    final Uri $url = Uri.parse('/event/${guid}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Event, Event>($request);
  }

  @override
  Future<Response<dynamic>> _eventPost({required Event? body}) {
    final Uri $url = Uri.parse('/event');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Event>> _eventNewGet({required String? date}) {
    final Uri $url = Uri.parse('/event_new');
    final Map<String, dynamic> $params = <String, dynamic>{'date': date};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Event, Event>($request);
  }
}
