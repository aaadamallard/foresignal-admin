//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deception_payload_checks_inner.g.dart';

/// A matched check with its count
///
/// Properties:
/// * [check]
/// * [count]
/// * [lastAt]
/// * [detail]
@BuiltValue()
abstract class DeceptionPayloadChecksInner
    implements
        Built<DeceptionPayloadChecksInner, DeceptionPayloadChecksInnerBuilder> {
  @BuiltValueField(wireName: r'check')
  DeceptionPayloadChecksInnerCheckEnum get check;
  // enum checkEnum {  duplicate-mmsi,  vessel-implied-speed,  aircraft-implied-speed,  };

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'lastAt')
  DateTime? get lastAt;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  DeceptionPayloadChecksInner._();

  factory DeceptionPayloadChecksInner([
    void updates(DeceptionPayloadChecksInnerBuilder b),
  ]) = _$DeceptionPayloadChecksInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeceptionPayloadChecksInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeceptionPayloadChecksInner> get serializer =>
      _$DeceptionPayloadChecksInnerSerializer();
}

class _$DeceptionPayloadChecksInnerSerializer
    implements PrimitiveSerializer<DeceptionPayloadChecksInner> {
  @override
  final Iterable<Type> types = const [
    DeceptionPayloadChecksInner,
    _$DeceptionPayloadChecksInner,
  ];

  @override
  final String wireName = r'DeceptionPayloadChecksInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeceptionPayloadChecksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'check';
    yield serializers.serialize(
      object.check,
      specifiedType: const FullType(DeceptionPayloadChecksInnerCheckEnum),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    if (object.lastAt != null) {
      yield r'lastAt';
      yield serializers.serialize(
        object.lastAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeceptionPayloadChecksInner object, {
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
    required DeceptionPayloadChecksInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'check':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DeceptionPayloadChecksInnerCheckEnum,
                    ),
                  )
                  as DeceptionPayloadChecksInnerCheckEnum;
          result.check = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        case r'lastAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastAt = valueDes;
          break;
        case r'detail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.detail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeceptionPayloadChecksInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeceptionPayloadChecksInnerBuilder();
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

class DeceptionPayloadChecksInnerCheckEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'duplicate-mmsi')
  static const DeceptionPayloadChecksInnerCheckEnum duplicateMmsi =
      _$deceptionPayloadChecksInnerCheckEnum_duplicateMmsi;
  @BuiltValueEnumConst(wireName: r'vessel-implied-speed')
  static const DeceptionPayloadChecksInnerCheckEnum vesselImpliedSpeed =
      _$deceptionPayloadChecksInnerCheckEnum_vesselImpliedSpeed;
  @BuiltValueEnumConst(wireName: r'aircraft-implied-speed')
  static const DeceptionPayloadChecksInnerCheckEnum aircraftImpliedSpeed =
      _$deceptionPayloadChecksInnerCheckEnum_aircraftImpliedSpeed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeceptionPayloadChecksInnerCheckEnum unknownDefaultOpenApi =
      _$deceptionPayloadChecksInnerCheckEnum_unknownDefaultOpenApi;

  static Serializer<DeceptionPayloadChecksInnerCheckEnum> get serializer =>
      _$deceptionPayloadChecksInnerCheckEnumSerializer;

  const DeceptionPayloadChecksInnerCheckEnum._(String name) : super(name);

  static BuiltSet<DeceptionPayloadChecksInnerCheckEnum> get values =>
      _$deceptionPayloadChecksInnerCheckEnumValues;
  static DeceptionPayloadChecksInnerCheckEnum valueOf(String name) =>
      _$deceptionPayloadChecksInnerCheckEnumValueOf(name);
}
