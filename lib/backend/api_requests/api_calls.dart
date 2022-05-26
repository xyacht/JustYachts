import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class TookanTestCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'tookan test',
      apiUrl:
          'https://api.tookanapp.com/53616583f94a03134b50786e435373471ae0c3f32fdb78395c1f07c4/create_task',
      callType: ApiCallType.POST,
      headers: {
        'Type': 'Content-Type:application/json',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class CallCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Call',
      apiUrl:
          'https://api.tookanapp.com/53616583f94a03134b50786e435373471ae0c3f32fdb78395c1f07c4/create_task',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
