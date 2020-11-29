library http_api_example;

import 'package:owl_sql/owl_sql.dart' as owl;

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

class JsonClass {
  const JsonClass();

}

/// API example.
@HttpApi(rootPath: '/api/content/v1', functions: const <HttpFunction>[
  const HttpFunction('/ping', name: 'name'),
  const HttpFunction('/appointments/users/{id}',
  owl.SqlType
      method: HttpMethod.POST, request: Details, response: Status),
  const HttpFn('/appointments/users/{id}',
      method: HttpMethod.UPDATE, response: Status),
])
abstract class ContentApi {}
