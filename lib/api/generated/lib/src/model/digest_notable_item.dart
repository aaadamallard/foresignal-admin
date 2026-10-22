//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_notable_item.g.dart';

/// A notable current record in a digest (029)
///
/// Properties:
/// * [id] - <sourceId>:<externalId>
/// * [source_]
/// * [externalId]
/// * [kind]
/// * [seq] - Persisted head seq (cite with it)
/// * [title]
/// * [live]
/// * [observedAt]
/// * [effectiveTime]
/// * [rankValue] - Value of the descriptor's rankField when present
/// * [link] - publicBaseUrl/v1/records/{source}/{externalId}
@BuiltValue()
abstract class DigestNotableItem
    implements Built<DigestNotableItem, DigestNotableItemBuilder> {
  /// <sourceId>:<externalId>
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// Persisted head seq (cite with it)
  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'live')
  bool? get live;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  @BuiltValueField(wireName: r'effectiveTime')
  DateTime? get effectiveTime;

  /// Value of the descriptor's rankField when present
  @BuiltValueField(wireName: r'rankValue')
  JsonObject? get rankValue;

  /// publicBaseUrl/v1/records/{source}/{externalId}
  @BuiltValueField(wireName: r'link')
  String? get link;

  DigestNotableItem._();

  factory DigestNotableItem([void updates(DigestNotableItemBuilder b)]) =
      _$DigestNotableItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestNotableItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestNotableItem> get serializer =>
      _$DigestNotableItemSerializer();
}

class _$DigestNotableItemSerializer
    implements PrimitiveSerializer<DigestNotableItem> {
  @override
  final Iterable<Type> types = const [DigestNotableItem, _$DigestNotableItem];

  @override
  final String wireName = r'DigestNotableItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestNotableItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    yield r'seq';
    yield serializers.serialize(
      object.seq,
      specifiedType: const FullType(int),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(bool),
      );
    }
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.effectiveTime != null) {
      yield r'effectiveTime';
      yield serializers.serialize(
        object.effectiveTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.rankValue != null) {
      yield r'rankValue';
      yield serializers.serialize(
        object.rankValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestNotableItem object, {
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
    required DigestNotableItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seq = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'live':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.live = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'effectiveTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.effectiveTime = valueDes;
          break;
        case r'rankValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.rankValue = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.link = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestNotableItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestNotableItemBuilder();
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
