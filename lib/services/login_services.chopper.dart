// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$LoginServices extends LoginServices {
  _$LoginServices([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = LoginServices;

  Future<Response> login(dynamic loginModel) {
    final $url = '/sanctum_token';
    final $body = loginModel;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
