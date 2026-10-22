//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metric_projection_labels_inner.g.dart';

/// Label
///
/// Properties:
/// * [name]
/// * [path]
@BuiltValue()
abstract class MetricProjectionLabelsInner
    implements
        Built<MetricProjectionLabelsInner, MetricProjectionLabelsInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'path')
  String get path;

  MetricProjectionLabelsInner._();

  factory MetricProjectionLabelsInner(
          [void updates(MetricProjectionLabelsInnerBuilder b)]) =
      _$MetricProjectionLabelsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricProjectionLabelsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricProjectionLabelsInner> get serializer =>
      _$MetricProjectionLabelsInnerSerializer();
}

class _$MetricProjectionLabelsInnerSerializer
    implements PrimitiveSerializer<MetricProjectionLabelsInner> {
  @override
  final Iterable<Type> types = const [
    MetricProjectionLabelsInner,
    _$MetricProjectionLabelsInner
  ];

  @override
  final String wireName = r'MetricProjectionLabelsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricProjectionLabelsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricProjectionLabelsInner object, {
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
    required MetricProjectionLabelsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricProjectionLabelsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricProjectionLabelsInnerBuilder();
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
