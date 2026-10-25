//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_report_summary_top_finding.g.dart';

/// Top finding
///
/// Properties:
/// * [code]
/// * [suggestedAction]
@BuiltValue()
abstract class DoctorReportSummaryTopFinding
    implements
        Built<
          DoctorReportSummaryTopFinding,
          DoctorReportSummaryTopFindingBuilder
        > {
  @BuiltValueField(wireName: r'code')
  DoctorReportSummaryTopFindingCodeEnum get code;
  // enum codeEnum {  AUTH_FAILED,  UA_BLOCKED,  ENDPOINT_MOVED,  RATE_LIMITED,  UPSTREAM_ERROR,  HTML_INSTEAD_OF_DATA,  EMPTY_RESULT,  FIELD_RENAMED,  FIELD_REMOVED,  TYPE_CHANGED,  FORMAT_CHANGED,  PARSER_REJECTS,  COVERAGE_DROPPED,  NO_CHANGE_DETECTED,  PROBE_SKIPPED_BUDGET,  };

  @BuiltValueField(wireName: r'suggestedAction')
  String? get suggestedAction;

  DoctorReportSummaryTopFinding._();

  factory DoctorReportSummaryTopFinding([
    void updates(DoctorReportSummaryTopFindingBuilder b),
  ]) = _$DoctorReportSummaryTopFinding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorReportSummaryTopFindingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorReportSummaryTopFinding> get serializer =>
      _$DoctorReportSummaryTopFindingSerializer();
}

class _$DoctorReportSummaryTopFindingSerializer
    implements PrimitiveSerializer<DoctorReportSummaryTopFinding> {
  @override
  final Iterable<Type> types = const [
    DoctorReportSummaryTopFinding,
    _$DoctorReportSummaryTopFinding,
  ];

  @override
  final String wireName = r'DoctorReportSummaryTopFinding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorReportSummaryTopFinding object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(DoctorReportSummaryTopFindingCodeEnum),
    );
    if (object.suggestedAction != null) {
      yield r'suggestedAction';
      yield serializers.serialize(
        object.suggestedAction,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportSummaryTopFinding object, {
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
    required DoctorReportSummaryTopFindingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DoctorReportSummaryTopFindingCodeEnum,
                    ),
                  )
                  as DoctorReportSummaryTopFindingCodeEnum;
          result.code = valueDes;
          break;
        case r'suggestedAction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.suggestedAction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorReportSummaryTopFinding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorReportSummaryTopFindingBuilder();
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

class DoctorReportSummaryTopFindingCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'AUTH_FAILED')
  static const DoctorReportSummaryTopFindingCodeEnum AUTH_FAILED =
      _$doctorReportSummaryTopFindingCodeEnum_AUTH_FAILED;
  @BuiltValueEnumConst(wireName: r'UA_BLOCKED')
  static const DoctorReportSummaryTopFindingCodeEnum UA_BLOCKED =
      _$doctorReportSummaryTopFindingCodeEnum_UA_BLOCKED;
  @BuiltValueEnumConst(wireName: r'ENDPOINT_MOVED')
  static const DoctorReportSummaryTopFindingCodeEnum ENDPOINT_MOVED =
      _$doctorReportSummaryTopFindingCodeEnum_ENDPOINT_MOVED;
  @BuiltValueEnumConst(wireName: r'RATE_LIMITED')
  static const DoctorReportSummaryTopFindingCodeEnum RATE_LIMITED =
      _$doctorReportSummaryTopFindingCodeEnum_RATE_LIMITED;
  @BuiltValueEnumConst(wireName: r'UPSTREAM_ERROR')
  static const DoctorReportSummaryTopFindingCodeEnum UPSTREAM_ERROR =
      _$doctorReportSummaryTopFindingCodeEnum_UPSTREAM_ERROR;
  @BuiltValueEnumConst(wireName: r'HTML_INSTEAD_OF_DATA')
  static const DoctorReportSummaryTopFindingCodeEnum HTML_INSTEAD_OF_DATA =
      _$doctorReportSummaryTopFindingCodeEnum_HTML_INSTEAD_OF_DATA;
  @BuiltValueEnumConst(wireName: r'EMPTY_RESULT')
  static const DoctorReportSummaryTopFindingCodeEnum EMPTY_RESULT =
      _$doctorReportSummaryTopFindingCodeEnum_EMPTY_RESULT;
  @BuiltValueEnumConst(wireName: r'FIELD_RENAMED')
  static const DoctorReportSummaryTopFindingCodeEnum FIELD_RENAMED =
      _$doctorReportSummaryTopFindingCodeEnum_FIELD_RENAMED;
  @BuiltValueEnumConst(wireName: r'FIELD_REMOVED')
  static const DoctorReportSummaryTopFindingCodeEnum FIELD_REMOVED =
      _$doctorReportSummaryTopFindingCodeEnum_FIELD_REMOVED;
  @BuiltValueEnumConst(wireName: r'TYPE_CHANGED')
  static const DoctorReportSummaryTopFindingCodeEnum TYPE_CHANGED =
      _$doctorReportSummaryTopFindingCodeEnum_TYPE_CHANGED;
  @BuiltValueEnumConst(wireName: r'FORMAT_CHANGED')
  static const DoctorReportSummaryTopFindingCodeEnum FORMAT_CHANGED =
      _$doctorReportSummaryTopFindingCodeEnum_FORMAT_CHANGED;
  @BuiltValueEnumConst(wireName: r'PARSER_REJECTS')
  static const DoctorReportSummaryTopFindingCodeEnum PARSER_REJECTS =
      _$doctorReportSummaryTopFindingCodeEnum_PARSER_REJECTS;
  @BuiltValueEnumConst(wireName: r'COVERAGE_DROPPED')
  static const DoctorReportSummaryTopFindingCodeEnum COVERAGE_DROPPED =
      _$doctorReportSummaryTopFindingCodeEnum_COVERAGE_DROPPED;
  @BuiltValueEnumConst(wireName: r'NO_CHANGE_DETECTED')
  static const DoctorReportSummaryTopFindingCodeEnum NO_CHANGE_DETECTED =
      _$doctorReportSummaryTopFindingCodeEnum_NO_CHANGE_DETECTED;
  @BuiltValueEnumConst(wireName: r'PROBE_SKIPPED_BUDGET')
  static const DoctorReportSummaryTopFindingCodeEnum PROBE_SKIPPED_BUDGET =
      _$doctorReportSummaryTopFindingCodeEnum_PROBE_SKIPPED_BUDGET;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DoctorReportSummaryTopFindingCodeEnum unknownDefaultOpenApi =
      _$doctorReportSummaryTopFindingCodeEnum_unknownDefaultOpenApi;

  static Serializer<DoctorReportSummaryTopFindingCodeEnum> get serializer =>
      _$doctorReportSummaryTopFindingCodeEnumSerializer;

  const DoctorReportSummaryTopFindingCodeEnum._(String name) : super(name);

  static BuiltSet<DoctorReportSummaryTopFindingCodeEnum> get values =>
      _$doctorReportSummaryTopFindingCodeEnumValues;
  static DoctorReportSummaryTopFindingCodeEnum valueOf(String name) =>
      _$doctorReportSummaryTopFindingCodeEnumValueOf(name);
}
