import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import '/features/auth/data/datasources/auth_local_data_source.dart';
import '/features/auth/data/models/responses/login_response.dart';

import '../core.dart';

typedef _ProgressCallback = void Function(int count, int total);

abstract class AppHTTPClient {
  Future<Map<String, dynamic>> get(String url);
  Future<Map<String, dynamic>> post(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  });

  Future<Map<String, dynamic>> put(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  });

  Future<Map<String, dynamic>> patch(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  });

  Future<Map<String, dynamic>> upload(
    String endpoint, {
    required List<FormUploadDocument> files,
    required Map<String, dynamic> body,
    required _ProgressCallback onSendProgress,
    required _ProgressCallback onReceiveProgress,
  });

  Future<Map<String, dynamic>> delete(
    String endpoint, {
    required Map<String, dynamic> body,
  });
}

class DioHTTPClient implements AppHTTPClient {
  DioHTTPClient({
    required Dio client,
    required AuthLocalDataSource authLocalDataSource,
  })  : _client = client,
        _authLocalDataSource = authLocalDataSource {
    _addTokenToHeaderInterceptor();
  }
  final AuthLocalDataSource _authLocalDataSource;
  final Dio _client;

  @override
  Future<Map<String, dynamic>> get(
    String endpoint, {
    Function(int, int)? onReceiveProgress,
  }) async {
    return makeRequest(
      endpoint: endpoint,
      onReceiveProgress: onReceiveProgress,
      requestMethod: _RequestMethod.get,
    );
  }

  @override
  Future<Map<String, dynamic>> post(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        endpoint: endpoint,
        body: body,
        onReceiveProgress: onReceiveProgress,
        requestMethod: _RequestMethod.post,
      );

  @override
  Future<Map<String, dynamic>> put(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        endpoint: endpoint,
        body: body,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
        requestMethod: _RequestMethod.put,
      );

  @override
  Future<Map<String, dynamic>> patch(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        endpoint: endpoint,
        body: body,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
        requestMethod: _RequestMethod.patch,
      );

  @override
  Future<Map<String, dynamic>> delete(
    String endpoint, {
    required Map<String, dynamic> body,
  }) =>
      makeRequest(
        endpoint: endpoint,
        body: body,
        requestMethod: _RequestMethod.delete,
      );

  @override
  Future<Map<String, dynamic>> upload(
    String endpoint, {
    required List<FormUploadDocument> files,
    required Map<String, dynamic> body,
    required _ProgressCallback onSendProgress,
    required _ProgressCallback onReceiveProgress,
  }) =>
      makeRequest(
        endpoint: endpoint,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
        body: body,
        uploads: files,
        requestMethod: _RequestMethod.post,
      );

  Future<Map<String, dynamic>> makeRequest({
    required String endpoint,
    required String requestMethod,
    Map<String, dynamic>? body,
    List<FormUploadDocument>? uploads,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  }) async {
    try {
      dynamic data = body;
      AppLog.i('==================== ENDPOINT $endpoint ==================');
      if (body != null) {
        AppLog.i('==================== BODY SENT IS ==================');
        AppLog.i(jsonEncode(body));
      }
      if (uploads != null && uploads.isNotEmpty) {
        AppLog.i('==================== FILES SENT IS ==================');
        AppLog.i(uploads
            .map((FormUploadDocument uploadDocument) =>
                uploadDocument.toString())
            .join('\n'));
        data = FormData()
          ..fields.addAll(body?.isEmpty ?? true
              ? <MapEntry<String, String>>[]
              : body!.keys.map((String key) =>
                  MapEntry<String, String>(key, body[key] as String)))
          ..files.addAll(
            uploads.map(
              (FormUploadDocument uploadDocument) =>
                  MapEntry<String, MultipartFile>(
                uploadDocument.field,
                MultipartFile.fromFileSync(
                  uploadDocument.file.path,
                ),
              ),
            ),
          );
      }

      final Response<dynamic> response = await _client.request<dynamic>(
        endpoint,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
        options: Options()..method = requestMethod,
        data: data,
      );

      if (response.data != null) {
        AppLog.i('==================== OBJECT RECEIVED  IS ==================');
        late Map<String, dynamic> data;
        if (response.data is Map) {
          if (endpoint.contains('auth')) {
            final Headers headers = response.headers;
            data = response.data as Map<String, dynamic>;
            data['data']['user_token_validation']['token'] =
                headers['access-token']?[0];
            data['data']['user_token_validation']['client'] =
                headers['client']?[0];
            data['data']['user_token_validation']['uid'] = headers['uid']?[0];
            data['data']['user_token_validation']['expiry'] =
                headers['expiry']?[0];
          } else {
            data = response.data as Map<String, dynamic>;
          }
        }
        if (response.data is List) {
          data = <String, dynamic>{'data': response.data};
        }
        if (response.data is String) {
          if ((response.data as String).isNotEmpty) {
            data = jsonDecode(response.data as String) as Map<String, dynamic>;
          } else {
            data = <String, dynamic>{};
          }
        }
        AppLog.i(data.toString());

        if (data['data'] is Map<String, dynamic>) {
          return data['data'] as Map<String, dynamic>;
        }
        if (data['data'] is List) {
          return <String, dynamic>{'items': data['data']};
        }
        if (response.data is Map<String, dynamic>) {
          return response.data as Map<String, dynamic>;
        }
      }
      return <String, dynamic>{};
    } on DioError catch (error) {
      AppLog.i('==================== ERROR THROWN IS ==================');
      AppLog.i(jsonEncode(error.response?.data));

      switch (error.type) {
        case DioErrorType.connectTimeout:
          throw TimeoutException(error.message,
              Duration(milliseconds: _client.options.connectTimeout));
        case DioErrorType.sendTimeout:
          throw TimeoutException(error.message,
              Duration(milliseconds: _client.options.sendTimeout));
        case DioErrorType.receiveTimeout:
          throw TimeoutException(error.message,
              Duration(milliseconds: _client.options.receiveTimeout));
        case DioErrorType.response:
          if (error.response?.data['errors'] is List) {
            final List<dynamic>? errorMessages =
                error.response?.data['errors'] as List<dynamic>?;
            throw ServerException(errorMessages?[0] as String);
          } else {
            final String errorMessage =
                (error.response?.data['error'] as String?) ?? error.message;
            throw ServerException(errorMessage);
          }

        case DioErrorType.other:
          if (error.message.contains('SocketException')) {
            throw AppException('No Internet');
          }

          throw AppException();
        default:
          throw AppException();
      }
    } catch (error, stackTrace) {
      AppLog.e(error, stackTrace);
      throw AppException();
    }
  }

  Future<void> _addTokenToHeaderInterceptor() async {
    _client.interceptors
      ..clear()
      ..add(
        QueuedInterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            final LoginResponse? response = _authLocalDataSource.authResponse ??
                await _authLocalDataSource.getAuthResponse();
            options.headers['Authorization'] =
                'Bearer ${response?.token ?? ''}';

            AppLog.i('==================== HEADER SENT IS ==================');
            AppLog.i(options.headers);
            handler.next(options);
          },
        ),
      );
  }
}

class _RequestMethod {
  const _RequestMethod._();
  static const String post = 'POST';
  static const String get = 'GET';
  static const String delete = 'DELETE';
  static const String put = 'PUT';
  static const String patch = 'PATCH';
}

class FormUploadDocument {
  const FormUploadDocument({
    required this.field,
    required this.file,
  });
  final String field;
  final File file;

  @override
  String toString() {
    return 'Field: $field || FilePath: ${file.path}';
  }
}
