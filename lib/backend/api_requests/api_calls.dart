import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ChatGPTCall {
  static Future<ApiCallResponse> call({
    String? apiKey =
        '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',
    String? pergunta = '',
    dynamic historicoConversaJson,
    List<Map<String, dynamic>>? functions,
  }) async {
    final historicoConversa = _serializeJson(historicoConversaJson, true);
    final ffApiRequestBody = {
      "model": "gpt-4o-mini",
      "messages": json.decode(historicoConversa),
    };

    if (functions != null && functions.isNotEmpty) {
      ffApiRequestBody["functions"] = functions;
      ffApiRequestBody["function_call"] = "auto";
    }

    return ApiManager.instance.makeApiCall(
      callName: 'ChatGPT',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'Application/json',
      },
      params: {},
      body: json.encode(ffApiRequestBody),
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? resposta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
  static String? modelo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.model''',
      ));
  static Map<String, dynamic>? functionCall(dynamic response) => 
      castToType<Map<String, dynamic>>(getJsonField(
        response,
        r'''$.choices[:].message.function_call''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
