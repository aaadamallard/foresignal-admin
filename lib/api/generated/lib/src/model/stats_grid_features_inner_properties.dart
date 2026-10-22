//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_grid_features_inner_properties.g.dart';

/// Cell properties
///
/// Properties:
/// * [cell]
/// * [value]
@BuiltValue()
abstract class StatsGridFeaturesInnerProperties
    implements
        Built<StatsGridFeaturesInnerProperties,
            StatsGridFeaturesInnerPropertiesBuilder> {
  @BuiltValueField(wireName: r'cell')
  String? get cell;

  @BuiltValueField(wireName: r'value')
  int get value;

  StatsGridFeaturesInnerProperties._();

  factory StatsGridFeaturesInnerProperties(
          [void updates(StatsGridFeaturesInnerPropertiesBuilder b)]) =
      _$StatsGridFeaturesInnerProperties;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsGridFeaturesInnerPropertiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsGridFeaturesInnerProperties> get serializer =>
      _$StatsGridFeaturesInnerPropertiesSerializer();
}

class _$StatsGridFeaturesInnerPropertiesSerializer
    implements PrimitiveSerializer<StatsGridFeaturesInnerProperties> {
  @override
  final Iterable<Type> types = const [
    StatsGridFeaturesInnerProperties,
    _$StatsGridFeaturesInnerProperties
  ];

  @override
  final String wireName = r'StatsGridFeaturesInnerProperties';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsGridFeaturesInnerProperties object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cell != null) {
      yield r'cell';
      yield serializers.serialize(
        object.cell,
        specifiedType: const FullType(String),
      );
    }
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsGridFeaturesInnerProperties object, {
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
    required StatsGridFeaturesInnerPropertiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cell':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cell = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  StatsGridFeaturesInnerProperties deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsGridFeaturesInnerPropertiesBuilder();
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
