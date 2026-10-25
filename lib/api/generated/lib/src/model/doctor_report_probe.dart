//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_report_probe.g.dart';

/// Probe summary
///
/// Properties:
/// * [skipped]
/// * [status] - ok, http-error, parse-error or failed (no response)
/// * [httpStatus]
/// * [contentType]
/// * [bytes]
/// * [url] - Redacted
/// * [durationMs]
/// * [skipReason] - Why no probe was sent (budget and backoff give the finding PROBE_SKIPPED_BUDGET)
/// * [records] - Records the adapter parsed from the probe (at most 100 counted)
/// * [requests] - Upstream requests the probe made
/// * [error] - The request failure, redacted
@BuiltValue()
abstract class DoctorReportProbe
    implements Built<DoctorReportProbe, DoctorReportProbeBuilder> {
  @BuiltValueField(wireName: r'skipped')
  bool get skipped;

  /// ok, http-error, parse-error or failed (no response)
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'httpStatus')
  int? get httpStatus;

  @BuiltValueField(wireName: r'contentType')
  String? get contentType;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  /// Redacted
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'durationMs')
  int? get durationMs;

  /// Why no probe was sent (budget and backoff give the finding PROBE_SKIPPED_BUDGET)
  @BuiltValueField(wireName: r'skipReason')
  DoctorReportProbeSkipReasonEnum? get skipReason;
  // enum skipReasonEnum {  budget,  backoff,  no-upstream,  not-requested,  };

  /// Records the adapter parsed from the probe (at most 100 counted)
  @BuiltValueField(wireName: r'records')
  int? get records;

  /// Upstream requests the probe made
  @BuiltValueField(wireName: r'requests')
  int? get requests;

  /// The request failure, redacted
  @BuiltValueField(wireName: r'error')
  String? get error;

  DoctorReportProbe._();

  factory DoctorReportProbe([void updates(DoctorReportProbeBuilder b)]) =
      _$DoctorReportProbe;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorReportProbeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorReportProbe> get serializer =>
      _$DoctorReportProbeSerializer();
}

class _$DoctorReportProbeSerializer
    implements PrimitiveSerializer<DoctorReportProbe> {
  @override
  final Iterable<Type> types = const [DoctorReportProbe, _$DoctorReportProbe];

  @override
  final String wireName = r'DoctorReportProbe';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorReportProbe object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'skipped';
    yield serializers.serialize(
      object.skipped,
      specifiedType: const FullType(bool),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.httpStatus != null) {
      yield r'httpStatus';
      yield serializers.serialize(
        object.httpStatus,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.durationMs != null) {
      yield r'durationMs';
      yield serializers.serialize(
        object.durationMs,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.skipReason != null) {
      yield r'skipReason';
      yield serializers.serialize(
        object.skipReason,
        specifiedType: const FullType.nullable(DoctorReportProbeSkipReasonEnum),
      );
    }
    if (object.records != null) {
      yield r'records';
      yield serializers.serialize(
        object.records,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.requests != null) {
      yield r'requests';
      yield serializers.serialize(
        object.requests,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportProbe object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DoctorReportProbeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'skipped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.skipped = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'httpStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.httpStatus = valueDes;
          break;
        case r'contentType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.contentType = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'durationMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.durationMs = valueDes;
          break;
        case r'skipReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DoctorReportProbeSkipReasonEnum,
                    ),
                  )
                  as DoctorReportProbeSkipReasonEnum?;
          if (valueDes == null) continue;
          result.skipReason = valueDes;
          break;
        case r'records':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.records = valueDes;
          break;
        case r'requests':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.requests = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorReportProbe deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorReportProbeBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

/// Why no probe was sent (budget and backoff give the finding PROBE_SKIPPED_BUDGET)
class DoctorReportProbeSkipReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'budget')
  static const DoctorReportProbeSkipReasonEnum budget =
      _$doctorReportProbeSkipReasonEnum_budget;
  @BuiltValueEnumConst(wireName: r'backoff')
  static const DoctorReportProbeSkipReasonEnum backoff =
      _$doctorReportProbeSkipReasonEnum_backoff;
  @BuiltValueEnumConst(wireName: r'no-upstream')
  static const DoctorReportProbeSkipReasonEnum noUpstream =
      _$doctorReportProbeSkipReasonEnum_noUpstream;
  @BuiltValueEnumConst(wireName: r'not-requested')
  static const DoctorReportProbeSkipReasonEnum notRequested =
      _$doctorReportProbeSkipReasonEnum_notRequested;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DoctorReportProbeSkipReasonEnum unknownDefaultOpenApi =
      _$doctorReportProbeSkipReasonEnum_unknownDefaultOpenApi;

  static Serializer<DoctorReportProbeSkipReasonEnum> get serializer =>
      _$doctorReportProbeSkipReasonEnumSerializer;

  const DoctorReportProbeSkipReasonEnum._(String name) : super(name);

  static BuiltSet<DoctorReportProbeSkipReasonEnum> get values =>
      _$doctorReportProbeSkipReasonEnumValues;
  static DoctorReportProbeSkipReasonEnum valueOf(String name) =>
      _$doctorReportProbeSkipReasonEnumValueOf(name);
}
