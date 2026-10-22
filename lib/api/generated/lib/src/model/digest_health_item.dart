//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_health_item.g.dart';

/// A source that was degraded or failing in the period (029)
///
/// Properties:
/// * [sourceId]
/// * [status]
/// * [since] - Since when the source has been in this state; null while health transitions are not stored
/// * [lastError]
@BuiltValue()
abstract class DigestHealthItem
    implements Built<DigestHealthItem, DigestHealthItemBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'status')
  DigestHealthItemStatusEnum get status;
  // enum statusEnum {  degraded,  failing,  };

  /// Since when the source has been in this state; null while health transitions are not stored
  @BuiltValueField(wireName: r'since')
  DateTime? get since;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  DigestHealthItem._();

  factory DigestHealthItem([void updates(DigestHealthItemBuilder b)]) =
      _$DigestHealthItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestHealthItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestHealthItem> get serializer =>
      _$DigestHealthItemSerializer();
}

class _$DigestHealthItemSerializer
    implements PrimitiveSerializer<DigestHealthItem> {
  @override
  final Iterable<Type> types = const [DigestHealthItem, _$DigestHealthItem];

  @override
  final String wireName = r'DigestHealthItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestHealthItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DigestHealthItemStatusEnum),
    );
    if (object.since != null) {
      yield r'since';
      yield serializers.serialize(
        object.since,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestHealthItem object, {
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
    required DigestHealthItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DigestHealthItemStatusEnum),
          ) as DigestHealthItemStatusEnum;
          result.status = valueDes;
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.since = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestHealthItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestHealthItemBuilder();
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

class DigestHealthItemStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'degraded')
  static const DigestHealthItemStatusEnum degraded =
      _$digestHealthItemStatusEnum_degraded;
  @BuiltValueEnumConst(wireName: r'failing')
  static const DigestHealthItemStatusEnum failing =
      _$digestHealthItemStatusEnum_failing;

  static Serializer<DigestHealthItemStatusEnum> get serializer =>
      _$digestHealthItemStatusEnumSerializer;

  const DigestHealthItemStatusEnum._(String name) : super(name);

  static BuiltSet<DigestHealthItemStatusEnum> get values =>
      _$digestHealthItemStatusEnumValues;
  static DigestHealthItemStatusEnum valueOf(String name) =>
      _$digestHealthItemStatusEnumValueOf(name);
}
