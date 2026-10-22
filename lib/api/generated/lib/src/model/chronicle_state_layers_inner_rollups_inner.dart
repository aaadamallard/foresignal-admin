//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_state_layers_inner_rollups_inner.g.dart';

/// Rollup counts for rollup-only layers
///
/// Properties:
/// * [region]
/// * [hour]
/// * [count]
@BuiltValue()
abstract class ChronicleStateLayersInnerRollupsInner
    implements
        Built<
          ChronicleStateLayersInnerRollupsInner,
          ChronicleStateLayersInnerRollupsInnerBuilder
        > {
  @BuiltValueField(wireName: r'region')
  String get region;

  @BuiltValueField(wireName: r'hour')
  DateTime get hour;

  @BuiltValueField(wireName: r'count')
  int get count;

  ChronicleStateLayersInnerRollupsInner._();

  factory ChronicleStateLayersInnerRollupsInner([
    void updates(ChronicleStateLayersInnerRollupsInnerBuilder b),
  ]) = _$ChronicleStateLayersInnerRollupsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleStateLayersInnerRollupsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleStateLayersInnerRollupsInner> get serializer =>
      _$ChronicleStateLayersInnerRollupsInnerSerializer();
}

class _$ChronicleStateLayersInnerRollupsInnerSerializer
    implements PrimitiveSerializer<ChronicleStateLayersInnerRollupsInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleStateLayersInnerRollupsInner,
    _$ChronicleStateLayersInnerRollupsInner,
  ];

  @override
  final String wireName = r'ChronicleStateLayersInnerRollupsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleStateLayersInnerRollupsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
    yield r'hour';
    yield serializers.serialize(
      object.hour,
      specifiedType: const FullType(DateTime),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleStateLayersInnerRollupsInner object, {
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
    required ChronicleStateLayersInnerRollupsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.region = valueDes;
          break;
        case r'hour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.hour = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleStateLayersInnerRollupsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleStateLayersInnerRollupsInnerBuilder();
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
