//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_status_database.g.dart';

/// ResourceStatusDatabase
///
/// Properties:
/// * [sizeBytes]
@BuiltValue()
abstract class ResourceStatusDatabase
    implements Built<ResourceStatusDatabase, ResourceStatusDatabaseBuilder> {
  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  ResourceStatusDatabase._();

  factory ResourceStatusDatabase([
    void updates(ResourceStatusDatabaseBuilder b),
  ]) = _$ResourceStatusDatabase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceStatusDatabaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceStatusDatabase> get serializer =>
      _$ResourceStatusDatabaseSerializer();
}

class _$ResourceStatusDatabaseSerializer
    implements PrimitiveSerializer<ResourceStatusDatabase> {
  @override
  final Iterable<Type> types = const [
    ResourceStatusDatabase,
    _$ResourceStatusDatabase,
  ];

  @override
  final String wireName = r'ResourceStatusDatabase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceStatusDatabase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceStatusDatabase object, {
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
    required ResourceStatusDatabaseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sizeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceStatusDatabase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceStatusDatabaseBuilder();
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
