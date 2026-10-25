//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_note_patch.g.dart';

/// Note status change
///
/// Properties:
/// * [status]
@BuiltValue()
abstract class AnalystNotePatch
    implements Built<AnalystNotePatch, AnalystNotePatchBuilder> {
  @BuiltValueField(wireName: r'status')
  AnalystNotePatchStatusEnum get status;
  // enum statusEnum {  new,  read,  dismissed,  };

  AnalystNotePatch._();

  factory AnalystNotePatch([void updates(AnalystNotePatchBuilder b)]) =
      _$AnalystNotePatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystNotePatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystNotePatch> get serializer =>
      _$AnalystNotePatchSerializer();
}

class _$AnalystNotePatchSerializer
    implements PrimitiveSerializer<AnalystNotePatch> {
  @override
  final Iterable<Type> types = const [AnalystNotePatch, _$AnalystNotePatch];

  @override
  final String wireName = r'AnalystNotePatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystNotePatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AnalystNotePatchStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystNotePatch object, {
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
    required AnalystNotePatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalystNotePatchStatusEnum),
                  )
                  as AnalystNotePatchStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystNotePatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystNotePatchBuilder();
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

class AnalystNotePatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'new')
  static const AnalystNotePatchStatusEnum new_ =
      _$analystNotePatchStatusEnum_new_;
  @BuiltValueEnumConst(wireName: r'read')
  static const AnalystNotePatchStatusEnum read =
      _$analystNotePatchStatusEnum_read;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const AnalystNotePatchStatusEnum dismissed =
      _$analystNotePatchStatusEnum_dismissed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalystNotePatchStatusEnum unknownDefaultOpenApi =
      _$analystNotePatchStatusEnum_unknownDefaultOpenApi;

  static Serializer<AnalystNotePatchStatusEnum> get serializer =>
      _$analystNotePatchStatusEnumSerializer;

  const AnalystNotePatchStatusEnum._(String name) : super(name);

  static BuiltSet<AnalystNotePatchStatusEnum> get values =>
      _$analystNotePatchStatusEnumValues;
  static AnalystNotePatchStatusEnum valueOf(String name) =>
      _$analystNotePatchStatusEnumValueOf(name);
}
