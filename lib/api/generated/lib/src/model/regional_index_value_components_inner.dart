//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_value_components_inner.g.dart';

/// Component contribution
///
/// Properties:
/// * [key]
/// * [raw]
/// * [normalised]
/// * [weight]
/// * [contribution]
/// * [missing] - True when the component had no value; its weight went to the others
@BuiltValue()
abstract class RegionalIndexValueComponentsInner
    implements
        Built<RegionalIndexValueComponentsInner,
            RegionalIndexValueComponentsInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'raw')
  num? get raw;

  @BuiltValueField(wireName: r'normalised')
  num get normalised;

  @BuiltValueField(wireName: r'weight')
  num get weight;

  @BuiltValueField(wireName: r'contribution')
  num get contribution;

  /// True when the component had no value; its weight went to the others
  @BuiltValueField(wireName: r'missing')
  bool? get missing;

  RegionalIndexValueComponentsInner._();

  factory RegionalIndexValueComponentsInner(
          [void updates(RegionalIndexValueComponentsInnerBuilder b)]) =
      _$RegionalIndexValueComponentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexValueComponentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexValueComponentsInner> get serializer =>
      _$RegionalIndexValueComponentsInnerSerializer();
}

class _$RegionalIndexValueComponentsInnerSerializer
    implements PrimitiveSerializer<RegionalIndexValueComponentsInner> {
  @override
  final Iterable<Type> types = const [
    RegionalIndexValueComponentsInner,
    _$RegionalIndexValueComponentsInner
  ];

  @override
  final String wireName = r'RegionalIndexValueComponentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexValueComponentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    if (object.raw != null) {
      yield r'raw';
      yield serializers.serialize(
        object.raw,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'normalised';
    yield serializers.serialize(
      object.normalised,
      specifiedType: const FullType(num),
    );
    yield r'weight';
    yield serializers.serialize(
      object.weight,
      specifiedType: const FullType(num),
    );
    yield r'contribution';
    yield serializers.serialize(
      object.contribution,
      specifiedType: const FullType(num),
    );
    if (object.missing != null) {
      yield r'missing';
      yield serializers.serialize(
        object.missing,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexValueComponentsInner object, {
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
    required RegionalIndexValueComponentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'raw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.raw = valueDes;
          break;
        case r'normalised':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.normalised = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.weight = valueDes;
          break;
        case r'contribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.contribution = valueDes;
          break;
        case r'missing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.missing = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexValueComponentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexValueComponentsInnerBuilder();
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
