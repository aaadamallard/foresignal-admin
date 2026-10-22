//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/api_util.dart';
import 'package:foresignal_api/src/model/alert.dart';
import 'package:foresignal_api/src/model/alert_feedback_input.dart';
import 'package:foresignal_api/src/model/alert_page.dart';
import 'package:foresignal_api/src/model/alert_transition_input.dart';
import 'package:foresignal_api/src/model/problem.dart';
import 'package:foresignal_api/src/model/snooze_input.dart';
import 'package:foresignal_api/src/model/stream_alerts200_response.dart';

class AlertsApi {
  final Dio _dio;

  final Serializers _serializers;

  const AlertsApi(this._dio, this._serializers);

  /// Acknowledge an alert
  /// Sets state acknowledged with an optional note and feedback; idempotent, a no-op on resolved alerts. Publishes &#x60;alert.updated&#x60;.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [alertId] - Alert id
  /// * [alertTransitionInput]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alert] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alert>> acknowledgeAlert({
    required int alertId,
    AlertTransitionInput? alertTransitionInput,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts/{alertId}/ack'.replaceAll(
      '{'
      r'alertId'
      '}',
      encodeQueryParameter(
        _serializers,
        alertId,
        const FullType(int),
      ).toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(AlertTransitionInput);
      _bodyData = alertTransitionInput == null
          ? null
          : _serializers.serialize(alertTransitionInput, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Alert? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alert),
                )
                as Alert;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alert>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get an alert
  /// Alert with its lifecycle; &#x60;record&#x60; is loaded by seq and falls back to &#x60;recordSnapshot&#x60; once the version is gone. An alert of a private source is 404 for anonymous callers.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [alertId] - Alert id
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alert] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alert>> getAlert({
    required int alertId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts/{alertId}'.replaceAll(
      '{'
      r'alertId'
      '}',
      encodeQueryParameter(
        _serializers,
        alertId,
        const FullType(int),
      ).toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Alert? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alert),
                )
                as Alert;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alert>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List alerts newest first
  /// Alerts newest first, keyset on id. Suppressed alerts are hidden unless includeSuppressed. Anonymous callers (security.openReads) never see alerts of private sources.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [ruleId] - Filter by rule
  /// * [source_] - Filter by source id (repeatable or comma-separated)
  /// * [since] - firedAt >= since
  /// * [acknowledged] - Filter by acknowledgement
  /// * [cursor] - Opaque pagination cursor from a previous response's nextCursor
  /// * [limit] - Page size
  /// * [kind] - Filter by kind (repeatable or comma-separated)
  /// * [state] - Filter by state (repeatable or comma-separated)
  /// * [feedback] - Filter by feedback (repeatable or comma-separated)
  /// * [minSeverity] - Minimum severity
  /// * [tag] - Only alerts with this tag
  /// * [includeSuppressed] - Include suppressed alerts
  /// * [country] - ISO 3166-1 alpha-2 codes (040); unknown → 400 UNKNOWN_REGION
  /// * [admin1] - ISO 3166-2 codes, e.g. US-TX (040)
  /// * [county] - US county FIPS5 codes (040)
  /// * [include] - `context` returns the full `alert.context` on list items (default: only `context.weather.summary`, and `context` is null for an alert without a weather context)
  /// * [includeExercise] - Include exercise alerts
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AlertPage] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AlertPage>> listAlerts({
    String? ruleId,
    BuiltList<String>? source_,
    DateTime? since,
    bool? acknowledged,
    String? cursor,
    int? limit,
    BuiltList<String>? kind,
    BuiltList<String>? state,
    BuiltList<String>? feedback,
    String? minSeverity,
    String? tag,
    bool? includeSuppressed,
    BuiltList<String>? country,
    BuiltList<String>? admin1,
    BuiltList<String>? county,
    BuiltList<String>? include,
    bool? includeExercise,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (ruleId != null)
        r'ruleId': encodeQueryParameter(
          _serializers,
          ruleId,
          const FullType(String),
        ),
      if (source_ != null)
        r'source': encodeCollectionQueryParameter<String>(
          _serializers,
          source_,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (since != null)
        r'since': encodeQueryParameter(
          _serializers,
          since,
          const FullType(DateTime),
        ),
      if (acknowledged != null)
        r'acknowledged': encodeQueryParameter(
          _serializers,
          acknowledged,
          const FullType(bool),
        ),
      if (cursor != null)
        r'cursor': encodeQueryParameter(
          _serializers,
          cursor,
          const FullType(String),
        ),
      if (limit != null)
        r'limit': encodeQueryParameter(
          _serializers,
          limit,
          const FullType(int),
        ),
      if (kind != null)
        r'kind': encodeCollectionQueryParameter<String>(
          _serializers,
          kind,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (state != null)
        r'state': encodeCollectionQueryParameter<String>(
          _serializers,
          state,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (feedback != null)
        r'feedback': encodeCollectionQueryParameter<String>(
          _serializers,
          feedback,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (minSeverity != null)
        r'minSeverity': encodeQueryParameter(
          _serializers,
          minSeverity,
          const FullType(String),
        ),
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (includeSuppressed != null)
        r'includeSuppressed': encodeQueryParameter(
          _serializers,
          includeSuppressed,
          const FullType(bool),
        ),
      if (country != null)
        r'country': encodeCollectionQueryParameter<String>(
          _serializers,
          country,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (admin1 != null)
        r'admin1': encodeCollectionQueryParameter<String>(
          _serializers,
          admin1,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (county != null)
        r'county': encodeCollectionQueryParameter<String>(
          _serializers,
          county,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (include != null)
        r'include': encodeCollectionQueryParameter<String>(
          _serializers,
          include,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (includeExercise != null)
        r'includeExercise': encodeQueryParameter(
          _serializers,
          includeExercise,
          const FullType(bool),
        ),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AlertPage? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AlertPage),
                )
                as AlertPage;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AlertPage>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Resolve an alert
  /// Resolves the alert (&#x60;resolvedBy &#x3D; token:&lt;name&gt;&#x60; or &#x60;admin&#x60;) with an optional note and feedback and publishes &#x60;alert.resolved&#x60;. Resolved is terminal: the next enter edge fires a new alert, and cooldown still applies from this alert&#39;s observedAt. Idempotent on a resolved alert.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [alertId] - Alert id
  /// * [alertTransitionInput]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alert] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alert>> resolveAlert({
    required int alertId,
    AlertTransitionInput? alertTransitionInput,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts/{alertId}/resolve'.replaceAll(
      '{'
      r'alertId'
      '}',
      encodeQueryParameter(
        _serializers,
        alertId,
        const FullType(int),
      ).toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(AlertTransitionInput);
      _bodyData = alertTransitionInput == null
          ? null
          : _serializers.serialize(alertTransitionInput, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Alert? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alert),
                )
                as Alert;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alert>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Record alert-quality feedback
  /// Sets &#x60;feedback&#x60; (useful, noise, late, false_positive) and an optional note, counted in the rule&#39;s feedbackCounts; works in any state. Publishes &#x60;alert.updated&#x60;.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [alertId] - Alert id
  /// * [alertFeedbackInput]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alert] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alert>> setAlertFeedback({
    required int alertId,
    required AlertFeedbackInput alertFeedbackInput,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts/{alertId}/feedback'.replaceAll(
      '{'
      r'alertId'
      '}',
      encodeQueryParameter(
        _serializers,
        alertId,
        const FullType(int),
      ).toString(),
    );
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(AlertFeedbackInput);
      _bodyData = _serializers.serialize(
        alertFeedbackInput,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Alert? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alert),
                )
                as Alert;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alert>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Snooze an alert
  /// Until the expiry, new matches of the same rule and entity are recorded as suppressed (&#x60;alert_snoozed&#x60;) and not routed. Publishes &#x60;alert.updated&#x60;.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [alertId] - Alert id
  /// * [snoozeInput]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alert] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alert>> snoozeAlert({
    required int alertId,
    required SnoozeInput snoozeInput,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts/{alertId}/snooze'.replaceAll(
      '{'
      r'alertId'
      '}',
      encodeQueryParameter(
        _serializers,
        alertId,
        const FullType(int),
      ).toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(SnoozeInput);
      _bodyData = _serializers.serialize(snoozeInput, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Alert? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alert),
                )
                as Alert;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alert>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Live alert stream (SSE)
  /// Alert lifecycle as SSE: &#x60;alert&#x60; (fired), &#x60;alert.updated&#x60; and &#x60;alert.resolved&#x60;, data AlertEvent, &#x60;id:&#x60; &#x3D; alert rev. Resume replays rows with rev &gt; Last-Event-ID in their current state; clients upsert by alert id. A malformed Last-Event-ID is 400 INVALID_CURSOR. Anonymous callers never see alerts of private sources. &#x60;alert.enriched&#x60; (030, data Alert) is an update of the same alert with its enrichment summary; clients treat it as an upsert by alert id. A replay sends each alert once in its current state, summary included.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [lastEventID] - Last alert rev received
  /// * [ruleId] - Filter by rule
  /// * [minSeverity] - Minimum severity
  /// * [source_] - Filter by source id (repeatable or comma-separated)
  /// * [kind] - Filter by kind (repeatable or comma-separated)
  /// * [includeSuppressed] - Include suppressed alerts
  /// * [ticket] - Stream or tile ticket from `POST /v1/stream-tickets` (023), for clients that cannot send an `Authorization` header. Accepted only for the ticket's purpose and never in a header; stripped from logs
  /// * [includeExercise] - Include exercise alerts
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [StreamAlerts200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<StreamAlerts200Response>> streamAlerts({
    String? lastEventID,
    BuiltList<String>? ruleId,
    String? minSeverity,
    BuiltList<String>? source_,
    BuiltList<String>? kind,
    bool? includeSuppressed,
    String? ticket,
    bool? includeExercise,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts/stream';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (lastEventID != null) r'Last-Event-ID': lastEventID,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (ruleId != null)
        r'ruleId': encodeCollectionQueryParameter<String>(
          _serializers,
          ruleId,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (minSeverity != null)
        r'minSeverity': encodeQueryParameter(
          _serializers,
          minSeverity,
          const FullType(String),
        ),
      if (source_ != null)
        r'source': encodeCollectionQueryParameter<String>(
          _serializers,
          source_,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (kind != null)
        r'kind': encodeCollectionQueryParameter<String>(
          _serializers,
          kind,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (includeSuppressed != null)
        r'includeSuppressed': encodeQueryParameter(
          _serializers,
          includeSuppressed,
          const FullType(bool),
        ),
      if (ticket != null)
        r'ticket': encodeQueryParameter(
          _serializers,
          ticket,
          const FullType(String),
        ),
      if (includeExercise != null)
        r'includeExercise': encodeQueryParameter(
          _serializers,
          includeExercise,
          const FullType(bool),
        ),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    StreamAlerts200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(StreamAlerts200Response),
                )
                as StreamAlerts200Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<StreamAlerts200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// End an alert&#39;s snooze
  /// Clears &#x60;snoozedUntil&#x60; and publishes &#x60;alert.updated&#x60;; idempotent.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [alertId] - Alert id
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alert] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alert>> unsnoozeAlert({
    required int alertId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/alerts/{alertId}/snooze'.replaceAll(
      '{'
      r'alertId'
      '}',
      encodeQueryParameter(
        _serializers,
        alertId,
        const FullType(int),
      ).toString(),
    );
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Alert? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alert),
                )
                as Alert;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alert>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
