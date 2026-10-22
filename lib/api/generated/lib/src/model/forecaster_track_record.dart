//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecaster_track_record.g.dart';

/// Headline track record
///
/// Properties:
/// * [nResolved]
/// * [brier]
/// * [label]
@BuiltValue()
abstract class ForecasterTrackRecord
    implements Built<ForecasterTrackRecord, ForecasterTrackRecordBuilder> {
  @BuiltValueField(wireName: r'nResolved')
  int get nResolved;

  @BuiltValueField(wireName: r'brier')
  num? get brier;

  @BuiltValueField(wireName: r'label')
  ForecasterTrackRecordLabelEnum get label;
  // enum labelEnum {  ok,  insufficient,  };

  ForecasterTrackRecord._();

  factory ForecasterTrackRecord([
    void updates(ForecasterTrackRecordBuilder b),
  ]) = _$ForecasterTrackRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecasterTrackRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecasterTrackRecord> get serializer =>
      _$ForecasterTrackRecordSerializer();
}

class _$ForecasterTrackRecordSerializer
    implements PrimitiveSerializer<ForecasterTrackRecord> {
  @override
  final Iterable<Type> types = const [
    ForecasterTrackRecord,
    _$ForecasterTrackRecord,
  ];

  @override
  final String wireName = r'ForecasterTrackRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecasterTrackRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nResolved';
    yield serializers.serialize(
      object.nResolved,
      specifiedType: const FullType(int),
    );
    if (object.brier != null) {
      yield r'brier';
      yield serializers.serialize(
        object.brier,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(ForecasterTrackRecordLabelEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecasterTrackRecord object, {
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
    required ForecasterTrackRecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nResolved':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nResolved = valueDes;
          break;
        case r'brier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.brier = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecasterTrackRecordLabelEnum,
                    ),
                  )
                  as ForecasterTrackRecordLabelEnum;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecasterTrackRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecasterTrackRecordBuilder();
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

class ForecasterTrackRecordLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ForecasterTrackRecordLabelEnum ok =
      _$forecasterTrackRecordLabelEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const ForecasterTrackRecordLabelEnum insufficient =
      _$forecasterTrackRecordLabelEnum_insufficient;

  static Serializer<ForecasterTrackRecordLabelEnum> get serializer =>
      _$forecasterTrackRecordLabelEnumSerializer;

  const ForecasterTrackRecordLabelEnum._(String name) : super(name);

  static BuiltSet<ForecasterTrackRecordLabelEnum> get values =>
      _$forecasterTrackRecordLabelEnumValues;
  static ForecasterTrackRecordLabelEnum valueOf(String name) =>
      _$forecasterTrackRecordLabelEnumValueOf(name);
}
