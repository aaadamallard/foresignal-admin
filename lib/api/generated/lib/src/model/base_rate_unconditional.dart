//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/stat_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_rate_unconditional.g.dart';

/// Unconditional rate alongside a conditional one
///
/// Properties:
/// * [ratePerWindow] - Mean events per window
/// * [pAtLeastOne]
/// * [interval]
/// * [nWindows] - Windows behind the unconditional rate
@BuiltValue()
abstract class BaseRateUnconditional
    implements Built<BaseRateUnconditional, BaseRateUnconditionalBuilder> {
  /// Mean events per window
  @BuiltValueField(wireName: r'ratePerWindow')
  num get ratePerWindow;

  @BuiltValueField(wireName: r'pAtLeastOne')
  num get pAtLeastOne;

  @BuiltValueField(wireName: r'interval')
  StatInterval get interval;

  /// Windows behind the unconditional rate
  @BuiltValueField(wireName: r'nWindows')
  int? get nWindows;

  BaseRateUnconditional._();

  factory BaseRateUnconditional(
      [void updates(BaseRateUnconditionalBuilder b)]) = _$BaseRateUnconditional;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseRateUnconditionalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseRateUnconditional> get serializer =>
      _$BaseRateUnconditionalSerializer();
}

class _$BaseRateUnconditionalSerializer
    implements PrimitiveSerializer<BaseRateUnconditional> {
  @override
  final Iterable<Type> types = const [
    BaseRateUnconditional,
    _$BaseRateUnconditional
  ];

  @override
  final String wireName = r'BaseRateUnconditional';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseRateUnconditional object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ratePerWindow';
    yield serializers.serialize(
      object.ratePerWindow,
      specifiedType: const FullType(num),
    );
    yield r'pAtLeastOne';
    yield serializers.serialize(
      object.pAtLeastOne,
      specifiedType: const FullType(num),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(StatInterval),
    );
    if (object.nWindows != null) {
      yield r'nWindows';
      yield serializers.serialize(
        object.nWindows,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseRateUnconditional object, {
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
    required BaseRateUnconditionalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ratePerWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ratePerWindow = valueDes;
          break;
        case r'pAtLeastOne':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.pAtLeastOne = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatInterval),
          ) as StatInterval;
          result.interval.replace(valueDes);
          break;
        case r'nWindows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.nWindows = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseRateUnconditional deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseRateUnconditionalBuilder();
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
