library http_api_example;

import 'package:owl/annotation/http.dart';

@JsonClass()
class Details {
  String name;
  String topic;
  String time;
}

@JsonClass()
class Status {
  bool success;

  String message;
}

/// API example.
@HttpApi(rootPath: '/api/content/v1', functions: const <HttpFunction>[
  const HttpFunction('/ping', name: 'name'),
  const HttpFunction('/appointments/users/{id}',
      method: HttpMethod.POST, request: Details, response: Status),
  const HttpFn('/appointments/users/{id}',
      method: HttpMethod.UPDATE, response: Status),
])
abstract class ContentApi {}
