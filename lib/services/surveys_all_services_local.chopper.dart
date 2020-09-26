// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surveys_all_services_local.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$SurveysAllServicesLocal extends SurveysAllServicesLocal {
  _$SurveysAllServicesLocal([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = SurveysAllServicesLocal;

  Future<Response> getSurveysLocal(String authKey, int page) {
    final $url = '/survey';
    final Map<String, dynamic> $params = {'page': page};
    final $headers = {'Authorization': authKey};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
