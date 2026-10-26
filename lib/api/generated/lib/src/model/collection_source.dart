//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_source.g.dart';

/// One source in the instance collection set (the union pulled by the paced collector, 173)
///
/// Properties:
/// * [sourceId]
/// * [inCollection] - Whether the instance collects this source at all
/// * [enabledByUsers] - How many users enable it in their view
@BuiltValue()
abstract class CollectionSource
    implements Built<CollectionSource, CollectionSourceBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  /// Whether the instance collects this source at all
  @BuiltValueField(wireName: r'inCollection')
  bool get inCollection;

  /// How many users enable it in their view
  @BuiltValueField(wireName: r'enabledByUsers')
  int? get enabledByUsers;

  CollectionSource._();

  factory CollectionSource([void updates(CollectionSourceBuilder b)]) =
      _$CollectionSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionSource> get serializer =>
      _$CollectionSourceSerializer();
}

class _$CollectionSourceSerializer
    implements PrimitiveSerializer<CollectionSource> {
  @override
  final Iterable<Type> types = const [CollectionSource, _$CollectionSource];

  @override
  final String wireName = r'CollectionSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'inCollection';
    yield serializers.serialize(
      object.inCollection,
      specifiedType: const FullType(bool),
    );
    if (object.enabledByUsers != null) {
      yield r'enabledByUsers';
      yield serializers.serialize(
        object.enabledByUsers,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionSource object, {
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
    required CollectionSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'inCollection':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.inCollection = valueDes;
          break;
        case r'enabledByUsers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.enabledByUsers = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionSourceBuilder();
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
