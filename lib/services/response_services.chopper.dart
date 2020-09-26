// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ResponseServices extends ResponseServices {
  _$ResponseServices([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ResponseServices;

  Future<Response> sendResult(String authKey, ResultResponses responses) {
    final $url = '/question_response';
    final $headers = {'Authorization': authKey};
    final $body = responses;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
