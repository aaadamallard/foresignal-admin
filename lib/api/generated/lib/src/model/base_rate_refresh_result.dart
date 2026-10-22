//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_rate_refresh_result.g.dart';

/// Result of a base-rate-refresh job (121): region profiles and automatic rates recomputed
///
/// Properties:
/// * [profiles] - Region profiles written
/// * [rates] - Automatic rates written (family × region × window)
/// * [skipped] - Family-region pairs with under 52 covered weeks
/// * [removed] - Automatic rates no longer produced and removed
/// * [families]
/// * [regions] - Regions with at least one automatic rate
/// * [computer]
@BuiltValue()
abstract class BaseRateRefreshResult
    implements Built<BaseRateRefreshResult, BaseRateRefreshResultBuilder> {
  /// Region profiles written
  @BuiltValueField(wireName: r'profiles')
  int get profiles;

  /// Automatic rates written (family × region × window)
  @BuiltValueField(wireName: r'rates')
  int get rates;

  /// Family-region pairs with under 52 covered weeks
  @BuiltValueField(wireName: r'skipped')
  int? get skipped;

  /// Automatic rates no longer produced and removed
  @BuiltValueField(wireName: r'removed')
  int? get removed;

  @BuiltValueField(wireName: r'families')
  BuiltList<String> get families;

  /// Regions with at least one automatic rate
  @BuiltValueField(wireName: r'regions')
  int? get regions;

  @BuiltValueField(wireName: r'computer')
  DetectorRef? get computer;

  BaseRateRefreshResult._();

  factory BaseRateRefreshResult(
      [void updates(BaseRateRefreshResultBuilder b)]) = _$BaseRateRefreshResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseRateRefreshResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseRateRefreshResult> get serializer =>
      _$BaseRateRefreshResultSerializer();
}

class _$BaseRateRefreshResultSerializer
    implements PrimitiveSerializer<BaseRateRefreshResult> {
  @override
  final Iterable<Type> types = const [
    BaseRateRefreshResult,
    _$BaseRateRefreshResult
  ];

  @override
  final String wireName = r'BaseRateRefreshResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseRateRefreshResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'profiles';
    yield serializers.serialize(
      object.profiles,
      specifiedType: const FullType(int),
    );
    yield r'rates';
    yield serializers.serialize(
      object.rates,
      specifiedType: const FullType(int),
    );
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(int),
      );
    }
    if (object.removed != null) {
      yield r'removed';
      yield serializers.serialize(
        object.removed,
        specifiedType: const FullType(int),
      );
    }
    yield r'families';
    yield serializers.serialize(
      object.families,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.regions != null) {
      yield r'regions';
      yield serializers.serialize(
        object.regions,
        specifiedType: const FullType(int),
      );
    }
    if (object.computer != null) {
      yield r'computer';
      yield serializers.serialize(
        object.computer,
        specifiedType: const FullType(DetectorRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseRateRefreshResult object, {
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
    required BaseRateRefreshResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'profiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.profiles = valueDes;
          break;
        case r'rates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rates = valueDes;
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.skipped = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.removed = valueDes;
          break;
        case r'families':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.families.replace(valueDes);
          break;
        case r'regions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.regions = valueDes;
          break;
        case r'computer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DetectorRef),
          ) as DetectorRef?;
          if (valueDes == null) continue;
          result.computer.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseRateRefreshResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseRateRefreshResultBuilder();
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
