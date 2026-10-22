//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_mapping_filter_inner.g.dart';

/// RecordMappingFilterInner
///
/// Properties:
/// * [path]
/// * [op]
/// * [value]
@BuiltValue()
abstract class RecordMappingFilterInner
    implements
        Built<RecordMappingFilterInner, RecordMappingFilterInnerBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'op')
  String get op;

  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  RecordMappingFilterInner._();

  factory RecordMappingFilterInner([
    void updates(RecordMappingFilterInnerBuilder b),
  ]) = _$RecordMappingFilterInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordMappingFilterInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordMappingFilterInner> get serializer =>
      _$RecordMappingFilterInnerSerializer();
}

class _$RecordMappingFilterInnerSerializer
    implements PrimitiveSerializer<RecordMappingFilterInner> {
  @override
  final Iterable<Type> types = const [
    RecordMappingFilterInner,
    _$RecordMappingFilterInner,
  ];

  @override
  final String wireName = r'RecordMappingFilterInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordMappingFilterInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'op';
    yield serializers.serialize(
      object.op,
      specifiedType: const FullType(String),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordMappingFilterInner object, {
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
    required RecordMappingFilterInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.path = valueDes;
          break;
        case r'op':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.op = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
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
  RecordMappingFilterInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordMappingFilterInnerBuilder();
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
