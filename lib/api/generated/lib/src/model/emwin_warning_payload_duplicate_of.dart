//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'emwin_warning_payload_duplicate_of.g.dart';

/// Matching nws-alerts record while it is healthy
///
/// Properties:
/// * [source_]
/// * [externalId]
@BuiltValue()
abstract class EmwinWarningPayloadDuplicateOf
    implements
        Built<EmwinWarningPayloadDuplicateOf,
            EmwinWarningPayloadDuplicateOfBuilder> {
  @BuiltValueField(wireName: r'source')
  EmwinWarningPayloadDuplicateOfSource_Enum get source_;
  // enum source_Enum {  nws-alerts,  };

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  EmwinWarningPayloadDuplicateOf._();

  factory EmwinWarningPayloadDuplicateOf(
          [void updates(EmwinWarningPayloadDuplicateOfBuilder b)]) =
      _$EmwinWarningPayloadDuplicateOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmwinWarningPayloadDuplicateOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmwinWarningPayloadDuplicateOf> get serializer =>
      _$EmwinWarningPayloadDuplicateOfSerializer();
}

class _$EmwinWarningPayloadDuplicateOfSerializer
    implements PrimitiveSerializer<EmwinWarningPayloadDuplicateOf> {
  @override
  final Iterable<Type> types = const [
    EmwinWarningPayloadDuplicateOf,
    _$EmwinWarningPayloadDuplicateOf
  ];

  @override
  final String wireName = r'EmwinWarningPayloadDuplicateOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmwinWarningPayloadDuplicateOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(EmwinWarningPayloadDuplicateOfSource_Enum),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EmwinWarningPayloadDuplicateOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmwinWarningPayloadDuplicateOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(EmwinWarningPayloadDuplicateOfSource_Enum),
          ) as EmwinWarningPayloadDuplicateOfSource_Enum;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmwinWarningPayloadDuplicateOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmwinWarningPayloadDuplicateOfBuilder();
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

class EmwinWarningPayloadDuplicateOfSource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'nws-alerts')
  static const EmwinWarningPayloadDuplicateOfSource_Enum nwsAlerts =
      _$emwinWarningPayloadDuplicateOfSourceEnum_nwsAlerts;

  static Serializer<EmwinWarningPayloadDuplicateOfSource_Enum> get serializer =>
      _$emwinWarningPayloadDuplicateOfSourceEnumSerializer;

  const EmwinWarningPayloadDuplicateOfSource_Enum._(String name) : super(name);

  static BuiltSet<EmwinWarningPayloadDuplicateOfSource_Enum> get values =>
      _$emwinWarningPayloadDuplicateOfSourceEnumValues;
  static EmwinWarningPayloadDuplicateOfSource_Enum valueOf(String name) =>
      _$emwinWarningPayloadDuplicateOfSourceEnumValueOf(name);
}
