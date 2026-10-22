//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'glance_sources.g.dart';

/// Source health tallies
///
/// Properties:
/// * [healthy]
/// * [degraded]
/// * [failing]
@BuiltValue()
abstract class GlanceSources
    implements Built<GlanceSources, GlanceSourcesBuilder> {
  @BuiltValueField(wireName: r'healthy')
  int? get healthy;

  @BuiltValueField(wireName: r'degraded')
  int? get degraded;

  @BuiltValueField(wireName: r'failing')
  int? get failing;

  GlanceSources._();

  factory GlanceSources([void updates(GlanceSourcesBuilder b)]) =
      _$GlanceSources;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GlanceSourcesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GlanceSources> get serializer =>
      _$GlanceSourcesSerializer();
}

class _$GlanceSourcesSerializer implements PrimitiveSerializer<GlanceSources> {
  @override
  final Iterable<Type> types = const [GlanceSources, _$GlanceSources];

  @override
  final String wireName = r'GlanceSources';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GlanceSources object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.healthy != null) {
      yield r'healthy';
      yield serializers.serialize(
        object.healthy,
        specifiedType: const FullType(int),
      );
    }
    if (object.degraded != null) {
      yield r'degraded';
      yield serializers.serialize(
        object.degraded,
        specifiedType: const FullType(int),
      );
    }
    if (object.failing != null) {
      yield r'failing';
      yield serializers.serialize(
        object.failing,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GlanceSources object, {
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
    required GlanceSourcesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'healthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.healthy = valueDes;
          break;
        case r'degraded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.degraded = valueDes;
          break;
        case r'failing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.failing = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GlanceSources deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlanceSourcesBuilder();
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
