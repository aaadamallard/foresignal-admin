//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/digest_notable_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_stats_notable_inner.g.dart';

/// Notable records for one kind
///
/// Properties:
/// * [kind]
/// * [items]
@BuiltValue()
abstract class DigestStatsNotableInner
    implements Built<DigestStatsNotableInner, DigestStatsNotableInnerBuilder> {
  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'items')
  BuiltList<DigestNotableItem> get items;

  DigestStatsNotableInner._();

  factory DigestStatsNotableInner(
          [void updates(DigestStatsNotableInnerBuilder b)]) =
      _$DigestStatsNotableInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestStatsNotableInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestStatsNotableInner> get serializer =>
      _$DigestStatsNotableInnerSerializer();
}

class _$DigestStatsNotableInnerSerializer
    implements PrimitiveSerializer<DigestStatsNotableInner> {
  @override
  final Iterable<Type> types = const [
    DigestStatsNotableInner,
    _$DigestStatsNotableInner
  ];

  @override
  final String wireName = r'DigestStatsNotableInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestStatsNotableInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(DigestNotableItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestStatsNotableInner object, {
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
    required DigestStatsNotableInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(DigestNotableItem)]),
          ) as BuiltList<DigestNotableItem>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestStatsNotableInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestStatsNotableInnerBuilder();
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
