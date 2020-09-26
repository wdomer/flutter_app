// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ChangePasswordServices extends ChangePasswordServices {
  _$ChangePasswordServices([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ChangePasswordServices;

  Future<Response> changePassword(
      String authKey, ChangePasswordModel changePasswordModel) {
    final $url = '/change_password';
    final $headers = {'Authorization': authKey};
    final $body = changePasswordModel;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
