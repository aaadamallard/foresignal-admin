//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_finding.g.dart';

/// A deterministic diagnosis finding
///
/// Properties:
/// * [code]
/// * [severity]
/// * [evidence] - Facts behind the finding; heuristic evidence (parser path scan) is marked as such
/// * [path] - Structure path concerned, e.g. `features[].properties.mag`
/// * [suggestedAction]
/// * [heuristic]
@BuiltValue()
abstract class DoctorFinding
    implements Built<DoctorFinding, DoctorFindingBuilder> {
  @BuiltValueField(wireName: r'code')
  DoctorFindingCodeEnum get code;
  // enum codeEnum {  AUTH_FAILED,  UA_BLOCKED,  ENDPOINT_MOVED,  RATE_LIMITED,  UPSTREAM_ERROR,  HTML_INSTEAD_OF_DATA,  EMPTY_RESULT,  FIELD_RENAMED,  FIELD_REMOVED,  TYPE_CHANGED,  FORMAT_CHANGED,  PARSER_REJECTS,  COVERAGE_DROPPED,  NO_CHANGE_DETECTED,  PROBE_SKIPPED_BUDGET,  };

  @BuiltValueField(wireName: r'severity')
  Severity get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// Facts behind the finding; heuristic evidence (parser path scan) is marked as such
  @BuiltValueField(wireName: r'evidence')
  BuiltList<String> get evidence;

  /// Structure path concerned, e.g. `features[].properties.mag`
  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'suggestedAction')
  String get suggestedAction;

  @BuiltValueField(wireName: r'heuristic')
  bool? get heuristic;

  DoctorFinding._();

  factory DoctorFinding([void updates(DoctorFindingBuilder b)]) =
      _$DoctorFinding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorFindingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorFinding> get serializer =>
      _$DoctorFindingSerializer();
}

class _$DoctorFindingSerializer implements PrimitiveSerializer<DoctorFinding> {
  @override
  final Iterable<Type> types = const [DoctorFinding, _$DoctorFinding];

  @override
  final String wireName = r'DoctorFinding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorFinding object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(DoctorFindingCodeEnum),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(Severity),
    );
    yield r'evidence';
    yield serializers.serialize(
      object.evidence,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'suggestedAction';
    yield serializers.serialize(
      object.suggestedAction,
      specifiedType: const FullType(String),
    );
    if (object.heuristic != null) {
      yield r'heuristic';
      yield serializers.serialize(
        object.heuristic,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorFinding object, {
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
    required DoctorFindingBuilder result,
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
                    specifiedType: const FullType(DoctorFindingCodeEnum),
                  )
                  as DoctorFindingCodeEnum;
          result.code = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Severity),
                  )
                  as Severity;
          result.severity = valueDes;
          break;
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.evidence.replace(valueDes);
          break;
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'suggestedAction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.suggestedAction = valueDes;
          break;
        case r'heuristic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.heuristic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorFinding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorFindingBuilder();
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

class DoctorFindingCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'AUTH_FAILED')
  static const DoctorFindingCodeEnum AUTH_FAILED =
      _$doctorFindingCodeEnum_AUTH_FAILED;
  @BuiltValueEnumConst(wireName: r'UA_BLOCKED')
  static const DoctorFindingCodeEnum UA_BLOCKED =
      _$doctorFindingCodeEnum_UA_BLOCKED;
  @BuiltValueEnumConst(wireName: r'ENDPOINT_MOVED')
  static const DoctorFindingCodeEnum ENDPOINT_MOVED =
      _$doctorFindingCodeEnum_ENDPOINT_MOVED;
  @BuiltValueEnumConst(wireName: r'RATE_LIMITED')
  static const DoctorFindingCodeEnum RATE_LIMITED =
      _$doctorFindingCodeEnum_RATE_LIMITED;
  @BuiltValueEnumConst(wireName: r'UPSTREAM_ERROR')
  static const DoctorFindingCodeEnum UPSTREAM_ERROR =
      _$doctorFindingCodeEnum_UPSTREAM_ERROR;
  @BuiltValueEnumConst(wireName: r'HTML_INSTEAD_OF_DATA')
  static const DoctorFindingCodeEnum HTML_INSTEAD_OF_DATA =
      _$doctorFindingCodeEnum_HTML_INSTEAD_OF_DATA;
  @BuiltValueEnumConst(wireName: r'EMPTY_RESULT')
  static const DoctorFindingCodeEnum EMPTY_RESULT =
      _$doctorFindingCodeEnum_EMPTY_RESULT;
  @BuiltValueEnumConst(wireName: r'FIELD_RENAMED')
  static const DoctorFindingCodeEnum FIELD_RENAMED =
      _$doctorFindingCodeEnum_FIELD_RENAMED;
  @BuiltValueEnumConst(wireName: r'FIELD_REMOVED')
  static const DoctorFindingCodeEnum FIELD_REMOVED =
      _$doctorFindingCodeEnum_FIELD_REMOVED;
  @BuiltValueEnumConst(wireName: r'TYPE_CHANGED')
  static const DoctorFindingCodeEnum TYPE_CHANGED =
      _$doctorFindingCodeEnum_TYPE_CHANGED;
  @BuiltValueEnumConst(wireName: r'FORMAT_CHANGED')
  static const DoctorFindingCodeEnum FORMAT_CHANGED =
      _$doctorFindingCodeEnum_FORMAT_CHANGED;
  @BuiltValueEnumConst(wireName: r'PARSER_REJECTS')
  static const DoctorFindingCodeEnum PARSER_REJECTS =
      _$doctorFindingCodeEnum_PARSER_REJECTS;
  @BuiltValueEnumConst(wireName: r'COVERAGE_DROPPED')
  static const DoctorFindingCodeEnum COVERAGE_DROPPED =
      _$doctorFindingCodeEnum_COVERAGE_DROPPED;
  @BuiltValueEnumConst(wireName: r'NO_CHANGE_DETECTED')
  static const DoctorFindingCodeEnum NO_CHANGE_DETECTED =
      _$doctorFindingCodeEnum_NO_CHANGE_DETECTED;
  @BuiltValueEnumConst(wireName: r'PROBE_SKIPPED_BUDGET')
  static const DoctorFindingCodeEnum PROBE_SKIPPED_BUDGET =
      _$doctorFindingCodeEnum_PROBE_SKIPPED_BUDGET;

  static Serializer<DoctorFindingCodeEnum> get serializer =>
      _$doctorFindingCodeEnumSerializer;

  const DoctorFindingCodeEnum._(String name) : super(name);

  static BuiltSet<DoctorFindingCodeEnum> get values =>
      _$doctorFindingCodeEnumValues;
  static DoctorFindingCodeEnum valueOf(String name) =>
      _$doctorFindingCodeEnumValueOf(name);
}
