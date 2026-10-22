//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_def_floors_inner.g.dart';

/// Floor rule
///
/// Properties:
/// * [id]
/// * [description]
/// * [condition]
/// * [minValue]
@BuiltValue()
abstract class RegionalIndexDefFloorsInner
    implements
        Built<RegionalIndexDefFloorsInner, RegionalIndexDefFloorsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'condition')
  BuiltMap<String, JsonObject?>? get condition;

  @BuiltValueField(wireName: r'minValue')
  num get minValue;

  RegionalIndexDefFloorsInner._();

  factory RegionalIndexDefFloorsInner([
    void updates(RegionalIndexDefFloorsInnerBuilder b),
  ]) = _$RegionalIndexDefFloorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexDefFloorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexDefFloorsInner> get serializer =>
      _$RegionalIndexDefFloorsInnerSerializer();
}

class _$RegionalIndexDefFloorsInnerSerializer
    implements PrimitiveSerializer<RegionalIndexDefFloorsInner> {
  @override
  final Iterable<Type> types = const [
    RegionalIndexDefFloorsInner,
    _$RegionalIndexDefFloorsInner,
  ];

  @override
  final String wireName = r'RegionalIndexDefFloorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexDefFloorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    if (object.condition != null) {
      yield r'condition';
      yield serializers.serialize(
        object.condition,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'minValue';
    yield serializers.serialize(
      object.minValue,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDefFloorsInner object, {
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
    required RegionalIndexDefFloorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.description = valueDes;
          break;
        case r'condition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.condition.replace(valueDes);
          break;
        case r'minValue':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.minValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexDefFloorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexDefFloorsInnerBuilder();
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
