//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coverage_stats_coverage_balance.g.dart';

/// Shares by lean bucket (0–1)
///
/// Properties:
/// * [left]
/// * [center]
/// * [right]
/// * [unrated]
@BuiltValue()
abstract class CoverageStatsCoverageBalance
    implements
        Built<
          CoverageStatsCoverageBalance,
          CoverageStatsCoverageBalanceBuilder
        > {
  @BuiltValueField(wireName: r'left')
  num get left;

  @BuiltValueField(wireName: r'center')
  num get center;

  @BuiltValueField(wireName: r'right')
  num get right;

  @BuiltValueField(wireName: r'unrated')
  num get unrated;

  CoverageStatsCoverageBalance._();

  factory CoverageStatsCoverageBalance([
    void updates(CoverageStatsCoverageBalanceBuilder b),
  ]) = _$CoverageStatsCoverageBalance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoverageStatsCoverageBalanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoverageStatsCoverageBalance> get serializer =>
      _$CoverageStatsCoverageBalanceSerializer();
}

class _$CoverageStatsCoverageBalanceSerializer
    implements PrimitiveSerializer<CoverageStatsCoverageBalance> {
  @override
  final Iterable<Type> types = const [
    CoverageStatsCoverageBalance,
    _$CoverageStatsCoverageBalance,
  ];

  @override
  final String wireName = r'CoverageStatsCoverageBalance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoverageStatsCoverageBalance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'left';
    yield serializers.serialize(
      object.left,
      specifiedType: const FullType(num),
    );
    yield r'center';
    yield serializers.serialize(
      object.center,
      specifiedType: const FullType(num),
    );
    yield r'right';
    yield serializers.serialize(
      object.right,
      specifiedType: const FullType(num),
    );
    yield r'unrated';
    yield serializers.serialize(
      object.unrated,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CoverageStatsCoverageBalance object, {
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
    required CoverageStatsCoverageBalanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'left':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.left = valueDes;
          break;
        case r'center':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.center = valueDes;
          break;
        case r'right':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.right = valueDes;
          break;
        case r'unrated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.unrated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CoverageStatsCoverageBalance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoverageStatsCoverageBalanceBuilder();
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
