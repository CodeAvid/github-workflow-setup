import 'package:http/http.dart';

abstract class NetworkManager {
  Future<Response> get(String url);
  Future<Response> post(String url, {Map<String, String>? body});
}

class NetworkManagerImpl implements NetworkManager {
  final Client client;

  NetworkManagerImpl({required this.client});

  @override
  Future<Response> get(String url) async {
    return client.get(Uri.parse(url));
  }

  @override
  Future<Response> post(String url, {Map<String, String>? body}) async {
    return client.post(Uri.parse(url), body: body);
  }
}
