//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/intel_event_member_input.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_input.g.dart';

/// Manual or agent-created intelligence event. Confidence is computed by EventScorer; a client-supplied confidence is rejected (400).
///
/// Properties:
/// * [type]
/// * [title]
/// * [severity]
/// * [origin]
/// * [geometry]
/// * [startTime]
/// * [endTime]
/// * [notes]
/// * [members]
@BuiltValue()
abstract class IntelEventInput
    implements Built<IntelEventInput, IntelEventInputBuilder> {
  @BuiltValueField(wireName: r'type')
  IntelEventInputTypeEnum get type;
  // enum typeEnum {  maritime-disruption,  aviation-anomaly,  infrastructure-disruption,  weather-impact,  seismic,  custom,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'severity')
  Severity? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'origin')
  IntelEventInputOriginEnum? get origin;
  // enum originEnum {  agent,  operator,  };

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'startTime')
  DateTime? get startTime;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'members')
  BuiltList<IntelEventMemberInput> get members;

  IntelEventInput._();

  factory IntelEventInput([void updates(IntelEventInputBuilder b)]) =
      _$IntelEventInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventInput> get serializer =>
      _$IntelEventInputSerializer();
}

class _$IntelEventInputSerializer
    implements PrimitiveSerializer<IntelEventInput> {
  @override
  final Iterable<Type> types = const [IntelEventInput, _$IntelEventInput];

  @override
  final String wireName = r'IntelEventInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(IntelEventInputTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(Severity),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(IntelEventInputOriginEnum),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.startTime != null) {
      yield r'startTime';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [
        FullType(IntelEventMemberInput),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventInput object, {
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
    required IntelEventInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntelEventInputTypeEnum),
                  )
                  as IntelEventInputTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IntelEventInputOriginEnum,
                    ),
                  )
                  as IntelEventInputOriginEnum?;
          if (valueDes == null) continue;
          result.origin = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'startTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'endTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'notes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(IntelEventMemberInput),
                    ]),
                  )
                  as BuiltList<IntelEventMemberInput>;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventInputBuilder();
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

class IntelEventInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime-disruption')
  static const IntelEventInputTypeEnum maritimeDisruption =
      _$intelEventInputTypeEnum_maritimeDisruption;
  @BuiltValueEnumConst(wireName: r'aviation-anomaly')
  static const IntelEventInputTypeEnum aviationAnomaly =
      _$intelEventInputTypeEnum_aviationAnomaly;
  @BuiltValueEnumConst(wireName: r'infrastructure-disruption')
  static const IntelEventInputTypeEnum infrastructureDisruption =
      _$intelEventInputTypeEnum_infrastructureDisruption;
  @BuiltValueEnumConst(wireName: r'weather-impact')
  static const IntelEventInputTypeEnum weatherImpact =
      _$intelEventInputTypeEnum_weatherImpact;
  @BuiltValueEnumConst(wireName: r'seismic')
  static const IntelEventInputTypeEnum seismic =
      _$intelEventInputTypeEnum_seismic;
  @BuiltValueEnumConst(wireName: r'custom')
  static const IntelEventInputTypeEnum custom =
      _$intelEventInputTypeEnum_custom;

  static Serializer<IntelEventInputTypeEnum> get serializer =>
      _$intelEventInputTypeEnumSerializer;

  const IntelEventInputTypeEnum._(String name) : super(name);

  static BuiltSet<IntelEventInputTypeEnum> get values =>
      _$intelEventInputTypeEnumValues;
  static IntelEventInputTypeEnum valueOf(String name) =>
      _$intelEventInputTypeEnumValueOf(name);
}

class IntelEventInputOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'agent')
  static const IntelEventInputOriginEnum agent =
      _$intelEventInputOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'operator')
  static const IntelEventInputOriginEnum operator_ =
      _$intelEventInputOriginEnum_operator_;

  static Serializer<IntelEventInputOriginEnum> get serializer =>
      _$intelEventInputOriginEnumSerializer;

  const IntelEventInputOriginEnum._(String name) : super(name);

  static BuiltSet<IntelEventInputOriginEnum> get values =>
      _$intelEventInputOriginEnumValues;
  static IntelEventInputOriginEnum valueOf(String name) =>
      _$intelEventInputOriginEnumValueOf(name);
}
