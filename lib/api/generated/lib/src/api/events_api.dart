//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/api_util.dart';
import 'package:foresignal_api/src/model/problem.dart';
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:foresignal_api/src/model/stream_events200_response.dart';

class EventsApi {
  final Dio _dio;

  final Serializers _serializers;

  const EventsApi(this._dio, this._serializers);

  /// Multiplexed, re-filterable event stream (SSE)
  /// One SSE connection for several topics (changes, alerts, notifications, system, and topics added later). The first event is &#x60;hello {streamId, topics, watermarkSeq, filterVersion}&#x60;; id-bearing events carry a composite &#x60;id:&#x60; holding the latest cursor of every subscribed topic, and &#x60;Last-Event-ID&#x60; resumes each topic. Swap the filter without reconnecting via PATCH &#x60;/v1/events/stream/{streamId}/filter&#x60; (debounce map pans 300–500 ms); live, touch and control events never carry an id.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [lastEventID] - Composite resume cursor (`c=<seq>;a=<rev>;n=<id>` …) from the last id-bearing event; malformed → 400 INVALID_CURSOR
  /// * [topics] - Comma-separated topics (default `changes`); registered by the EventTopic SPI: changes, alerts (017), notifications and system (018), later more. Unknown → 400 UNKNOWN_TOPIC; missing scope → 403.
  /// * [changesPeriodSource] - changes topic: source ids (repeatable or comma-separated)
  /// * [changesPeriodKind] - changes topic: kinds (repeatable or comma-separated)
  /// * [changesPeriodExternalId] - changes topic: external ids (repeatable or comma-separated)
  /// * [changesPeriodBbox] - minLon,minLat,maxLon,maxLat (WGS84). minLon > maxLon crosses the antimeridian and is split into two boxes; minLat < maxLat is required.
  /// * [changesPeriodNear] - Centre point `lon,lat` (GeoJSON order); requires `radiusKm`
  /// * [changesPeriodRadiusKm] - Radius in km around `near` (0 < r ≤ 2000); required with `near`
  /// * [changesPeriodLive] - changes topic: send `live` events
  /// * [changesPeriodTouches] - changes topic: send `touch` events
  /// * [changesPeriodPayload] - changes topic: include payloads
  /// * [alertsPeriodMinSeverity] - alerts topic: minimum severity
  /// * [alertsPeriodRuleId] - alerts topic: rule ids (repeatable or comma-separated)
  /// * [alertsPeriodSource] - alerts topic: source ids (repeatable or comma-separated)
  /// * [alertsPeriodKind] - alerts topic: kinds (repeatable or comma-separated)
  /// * [alertsPeriodIncludeSuppressed] - alerts topic: include suppressed alerts
  /// * [ticket] - Stream or tile ticket from `POST /v1/stream-tickets` (023), for clients that cannot send an `Authorization` header. Accepted only for the ticket's purpose and never in a header; stripped from logs
  /// * [changesPeriodPlace] - Place id(s) (036), resolved to their areas and intersected with the other filters; requires a token (places are never anonymous)
  /// * [changesPeriodView] - Saved view id or slug (036), intersected with the other filters; a view that references a place or watchlist needs a token
  /// * [changesPeriodInWatchlist] - Only entities whose identity is on this watchlist (036); token required (401 for anonymous and feed keys)
  /// * [alertsPeriodIncludeExercise] - alerts topic: include exercise alerts
  /// * [licencePolicy] - Licence policy flags (comma-separated): `no-nc` excludes records whose commercial use is not ALLOWED, `no-sa` excludes share-alike records, `redistributable` excludes records whose redistribution is not ALLOWED. Adds to the token's `licencePolicy` floor; it can never remove a token flag.
  /// * [foresignalLicencePolicy] - Header form of `licencePolicy` (comma-separated flags `no-nc`, `no-sa`, `redistributable`)
  /// * [workspacePeriodWorkspaceId] - `workspace` topic: the workspace to follow
  /// * [workspacePeriodClientId] - `workspace` topic: this client's id (presence, `originClientId`)
  /// * [workspacePeriodClientKind] - `workspace` topic: this client's kind (presence)
  /// * [chroniclePeriodChronicleId] - `chronicle` topic: chronicle ids (comma-separated)
  /// * [lastEventId] - Composite resume cursor, the same value as the Last-Event-ID header, for clients (browser EventSource) that cannot set the header on first connect. The header wins when both are present.
  /// * [situationsPeriodStatus] - situations topic (118): only events of situations in this status
  /// * [situationsPeriodTheme] - situations topic (118): only events of situations of this theme
  /// * [externalPeriodSourceId] - external topic (138, admin): only events of this provider
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [StreamEvents200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<StreamEvents200Response>> streamEvents({
    String? lastEventID,
    BuiltList<String>? topics,
    BuiltList<String>? changesPeriodSource,
    BuiltList<String>? changesPeriodKind,
    BuiltList<String>? changesPeriodExternalId,
    String? changesPeriodBbox,
    String? changesPeriodNear,
    num? changesPeriodRadiusKm,
    bool? changesPeriodLive,
    bool? changesPeriodTouches,
    bool? changesPeriodPayload,
    String? alertsPeriodMinSeverity,
    BuiltList<String>? alertsPeriodRuleId,
    BuiltList<String>? alertsPeriodSource,
    BuiltList<String>? alertsPeriodKind,
    bool? alertsPeriodIncludeSuppressed,
    String? ticket,
    BuiltList<String>? changesPeriodPlace,
    String? changesPeriodView,
    String? changesPeriodInWatchlist,
    bool? alertsPeriodIncludeExercise,
    BuiltList<String>? licencePolicy,
    String? foresignalLicencePolicy,
    String? workspacePeriodWorkspaceId,
    String? workspacePeriodClientId,
    String? workspacePeriodClientKind,
    BuiltList<String>? chroniclePeriodChronicleId,
    String? lastEventId,
    String? situationsPeriodStatus,
    SituationTheme? situationsPeriodTheme,
    String? externalPeriodSourceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/events/stream';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (lastEventID != null) r'Last-Event-ID': lastEventID,
        if (foresignalLicencePolicy != null)
          r'Foresignal-Licence-Policy': foresignalLicencePolicy,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (topics != null)
        r'topics': encodeCollectionQueryParameter<String>(
          _serializers,
          topics,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (changesPeriodSource != null)
        r'changes.source': encodeCollectionQueryParameter<String>(
          _serializers,
          changesPeriodSource,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (changesPeriodKind != null)
        r'changes.kind': encodeCollectionQueryParameter<String>(
          _serializers,
          changesPeriodKind,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (changesPeriodExternalId != null)
        r'changes.externalId': encodeCollectionQueryParameter<String>(
          _serializers,
          changesPeriodExternalId,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (changesPeriodBbox != null)
        r'changes.bbox': encodeQueryParameter(
            _serializers, changesPeriodBbox, const FullType(String)),
      if (changesPeriodNear != null)
        r'changes.near': encodeQueryParameter(
            _serializers, changesPeriodNear, const FullType(String)),
      if (changesPeriodRadiusKm != null)
        r'changes.radiusKm': encodeQueryParameter(
            _serializers, changesPeriodRadiusKm, const FullType(num)),
      if (changesPeriodLive != null)
        r'changes.live': encodeQueryParameter(
            _serializers, changesPeriodLive, const FullType(bool)),
      if (changesPeriodTouches != null)
        r'changes.touches': encodeQueryParameter(
            _serializers, changesPeriodTouches, const FullType(bool)),
      if (changesPeriodPayload != null)
        r'changes.payload': encodeQueryParameter(
            _serializers, changesPeriodPayload, const FullType(bool)),
      if (alertsPeriodMinSeverity != null)
        r'alerts.minSeverity': encodeQueryParameter(
            _serializers, alertsPeriodMinSeverity, const FullType(String)),
      if (alertsPeriodRuleId != null)
        r'alerts.ruleId': encodeCollectionQueryParameter<String>(
          _serializers,
          alertsPeriodRuleId,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (alertsPeriodSource != null)
        r'alerts.source': encodeCollectionQueryParameter<String>(
          _serializers,
          alertsPeriodSource,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (alertsPeriodKind != null)
        r'alerts.kind': encodeCollectionQueryParameter<String>(
          _serializers,
          alertsPeriodKind,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (alertsPeriodIncludeSuppressed != null)
        r'alerts.includeSuppressed': encodeQueryParameter(
            _serializers, alertsPeriodIncludeSuppressed, const FullType(bool)),
      if (ticket != null)
        r'ticket':
            encodeQueryParameter(_serializers, ticket, const FullType(String)),
      if (changesPeriodPlace != null)
        r'changes.place': encodeCollectionQueryParameter<String>(
          _serializers,
          changesPeriodPlace,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (changesPeriodView != null)
        r'changes.view': encodeQueryParameter(
            _serializers, changesPeriodView, const FullType(String)),
      if (changesPeriodInWatchlist != null)
        r'changes.inWatchlist': encodeQueryParameter(
            _serializers, changesPeriodInWatchlist, const FullType(String)),
      if (alertsPeriodIncludeExercise != null)
        r'alerts.includeExercise': encodeQueryParameter(
            _serializers, alertsPeriodIncludeExercise, const FullType(bool)),
      if (licencePolicy != null)
        r'licencePolicy': encodeCollectionQueryParameter<String>(
          _serializers,
          licencePolicy,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (workspacePeriodWorkspaceId != null)
        r'workspace.workspaceId': encodeQueryParameter(
            _serializers, workspacePeriodWorkspaceId, const FullType(String)),
      if (workspacePeriodClientId != null)
        r'workspace.clientId': encodeQueryParameter(
            _serializers, workspacePeriodClientId, const FullType(String)),
      if (workspacePeriodClientKind != null)
        r'workspace.clientKind': encodeQueryParameter(
            _serializers, workspacePeriodClientKind, const FullType(String)),
      if (chroniclePeriodChronicleId != null)
        r'chronicle.chronicleId': encodeCollectionQueryParameter<String>(
          _serializers,
          chroniclePeriodChronicleId,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (lastEventId != null)
        r'lastEventId': encodeQueryParameter(
            _serializers, lastEventId, const FullType(String)),
      if (situationsPeriodStatus != null)
        r'situations.status': encodeQueryParameter(
            _serializers, situationsPeriodStatus, const FullType(String)),
      if (situationsPeriodTheme != null)
        r'situations.theme': encodeQueryParameter(_serializers,
            situationsPeriodTheme, const FullType(SituationTheme)),
      if (externalPeriodSourceId != null)
        r'external.sourceId': encodeQueryParameter(
            _serializers, externalPeriodSourceId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    StreamEvents200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(StreamEvents200Response),
            ) as StreamEvents200Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<StreamEvents200Response>(
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

  /// Swap an open stream&#39;s filter
  /// Validates the whole body, then swaps the filter atomically on the stream&#39;s sender: the stream emits &#x60;filter-applied {atSeq, filterVersion}&#x60; and every later event uses the new filter. Omitted topic blocks are unchanged; an added topic starts live from now without replay; there is no spatial delta replay (load the newly exposed area with /v1/records or tiles). Only the owning principal may patch (anonymous callers send &#x60;Foresignal-Stream-Key&#x60;); others get 404.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [streamId] - Stream id from the `hello` event
  /// * [requestBody]
  /// * [foresignalStreamKey] - Anonymous streams: the `streamKey` from `hello`
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltMap<String, BuiltMap<String, JsonObject>>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltMap<String, BuiltMap<String, JsonObject>>>>
      updateEventStreamFilter({
    required String streamId,
    required BuiltMap<String, BuiltMap<String, JsonObject>> requestBody,
    String? foresignalStreamKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/events/stream/{streamId}/filter'.replaceAll(
        '{' r'streamId' '}',
        encodeQueryParameter(_serializers, streamId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        if (foresignalStreamKey != null)
          r'Foresignal-Stream-Key': foresignalStreamKey,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(BuiltMap, [FullType(String), FullType(BuiltMap)]);
      _bodyData = _serializers.serialize(requestBody, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
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

    BuiltMap<String, BuiltMap<String, JsonObject>>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(
                  BuiltMap, [FullType(String), FullType(BuiltMap)]),
            ) as BuiltMap<String, BuiltMap<String, JsonObject>>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltMap<String, BuiltMap<String, JsonObject>>>(
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
