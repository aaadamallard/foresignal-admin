//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_mapping_pairs.g.dart';

/// Flattens name/value arrays (e.g. airrohr `sensordatavalues`); fields then reference `$pairs.<key>`
///
/// Properties:
/// * [path]
/// * [key] - Member holding a pair's name
/// * [value] - Member holding a pair's value
@BuiltValue()
abstract class RecordMappingPairs
    implements Built<RecordMappingPairs, RecordMappingPairsBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Member holding a pair's name
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Member holding a pair's value
  @BuiltValueField(wireName: r'value')
  String get value;

  RecordMappingPairs._();

  factory RecordMappingPairs([void updates(RecordMappingPairsBuilder b)]) =
      _$RecordMappingPairs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordMappingPairsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordMappingPairs> get serializer =>
      _$RecordMappingPairsSerializer();
}

class _$RecordMappingPairsSerializer
    implements PrimitiveSerializer<RecordMappingPairs> {
  @override
  final Iterable<Type> types = const [RecordMappingPairs, _$RecordMappingPairs];

  @override
  final String wireName = r'RecordMappingPairs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordMappingPairs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordMappingPairs object, {
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
    required RecordMappingPairsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordMappingPairs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordMappingPairsBuilder();
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
