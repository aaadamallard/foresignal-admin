//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_def_components_inner.g.dart';

/// Index component
///
/// Properties:
/// * [key]
/// * [ref] - SeriesRef template with `{region}`
/// * [transform]
/// * [window]
/// * [direction]
/// * [floor]
@BuiltValue()
abstract class RegionalIndexDefComponentsInner
    implements
        Built<RegionalIndexDefComponentsInner,
            RegionalIndexDefComponentsInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  /// SeriesRef template with `{region}`
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'transform')
  RegionalIndexDefComponentsInnerTransformEnum get transform;
  // enum transformEnum {  log1p,  zscore,  pctrank,  level,  };

  @BuiltValueField(wireName: r'window')
  RegionalIndexDefComponentsInnerWindowEnum get window;
  // enum windowEnum {  P7D,  P28D,  P90D,  };

  @BuiltValueField(wireName: r'direction')
  RegionalIndexDefComponentsInnerDirectionEnum get direction;
  // enum directionEnum {  1,  -1,  };

  @BuiltValueField(wireName: r'floor')
  num? get floor;

  RegionalIndexDefComponentsInner._();

  factory RegionalIndexDefComponentsInner(
          [void updates(RegionalIndexDefComponentsInnerBuilder b)]) =
      _$RegionalIndexDefComponentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexDefComponentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexDefComponentsInner> get serializer =>
      _$RegionalIndexDefComponentsInnerSerializer();
}

class _$RegionalIndexDefComponentsInnerSerializer
    implements PrimitiveSerializer<RegionalIndexDefComponentsInner> {
  @override
  final Iterable<Type> types = const [
    RegionalIndexDefComponentsInner,
    _$RegionalIndexDefComponentsInner
  ];

  @override
  final String wireName = r'RegionalIndexDefComponentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexDefComponentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'transform';
    yield serializers.serialize(
      object.transform,
      specifiedType:
          const FullType(RegionalIndexDefComponentsInnerTransformEnum),
    );
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(RegionalIndexDefComponentsInnerWindowEnum),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType:
          const FullType(RegionalIndexDefComponentsInnerDirectionEnum),
    );
    if (object.floor != null) {
      yield r'floor';
      yield serializers.serialize(
        object.floor,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDefComponentsInner object, {
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
    required RegionalIndexDefComponentsInnerBuilder result,
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
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'transform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(RegionalIndexDefComponentsInnerTransformEnum),
          ) as RegionalIndexDefComponentsInnerTransformEnum;
          result.transform = valueDes;
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(RegionalIndexDefComponentsInnerWindowEnum),
          ) as RegionalIndexDefComponentsInnerWindowEnum;
          result.window = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(RegionalIndexDefComponentsInnerDirectionEnum),
          ) as RegionalIndexDefComponentsInnerDirectionEnum;
          result.direction = valueDes;
          break;
        case r'floor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.floor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexDefComponentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexDefComponentsInnerBuilder();
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

class RegionalIndexDefComponentsInnerTransformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'log1p')
  static const RegionalIndexDefComponentsInnerTransformEnum log1p =
      _$regionalIndexDefComponentsInnerTransformEnum_log1p;
  @BuiltValueEnumConst(wireName: r'zscore')
  static const RegionalIndexDefComponentsInnerTransformEnum zscore =
      _$regionalIndexDefComponentsInnerTransformEnum_zscore;
  @BuiltValueEnumConst(wireName: r'pctrank')
  static const RegionalIndexDefComponentsInnerTransformEnum pctrank =
      _$regionalIndexDefComponentsInnerTransformEnum_pctrank;
  @BuiltValueEnumConst(wireName: r'level')
  static const RegionalIndexDefComponentsInnerTransformEnum level =
      _$regionalIndexDefComponentsInnerTransformEnum_level;

  static Serializer<RegionalIndexDefComponentsInnerTransformEnum>
      get serializer =>
          _$regionalIndexDefComponentsInnerTransformEnumSerializer;

  const RegionalIndexDefComponentsInnerTransformEnum._(String name)
      : super(name);

  static BuiltSet<RegionalIndexDefComponentsInnerTransformEnum> get values =>
      _$regionalIndexDefComponentsInnerTransformEnumValues;
  static RegionalIndexDefComponentsInnerTransformEnum valueOf(String name) =>
      _$regionalIndexDefComponentsInnerTransformEnumValueOf(name);
}

class RegionalIndexDefComponentsInnerWindowEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'P7D')
  static const RegionalIndexDefComponentsInnerWindowEnum P7D =
      _$regionalIndexDefComponentsInnerWindowEnum_P7D;
  @BuiltValueEnumConst(wireName: r'P28D')
  static const RegionalIndexDefComponentsInnerWindowEnum P28D =
      _$regionalIndexDefComponentsInnerWindowEnum_P28D;
  @BuiltValueEnumConst(wireName: r'P90D')
  static const RegionalIndexDefComponentsInnerWindowEnum P90D =
      _$regionalIndexDefComponentsInnerWindowEnum_P90D;

  static Serializer<RegionalIndexDefComponentsInnerWindowEnum> get serializer =>
      _$regionalIndexDefComponentsInnerWindowEnumSerializer;

  const RegionalIndexDefComponentsInnerWindowEnum._(String name) : super(name);

  static BuiltSet<RegionalIndexDefComponentsInnerWindowEnum> get values =>
      _$regionalIndexDefComponentsInnerWindowEnumValues;
  static RegionalIndexDefComponentsInnerWindowEnum valueOf(String name) =>
      _$regionalIndexDefComponentsInnerWindowEnumValueOf(name);
}

class RegionalIndexDefComponentsInnerDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const RegionalIndexDefComponentsInnerDirectionEnum number1 =
      _$regionalIndexDefComponentsInnerDirectionEnum_number1;
  @BuiltValueEnumConst(wireNumber: -1)
  static const RegionalIndexDefComponentsInnerDirectionEnum numberNegative1 =
      _$regionalIndexDefComponentsInnerDirectionEnum_numberNegative1;

  static Serializer<RegionalIndexDefComponentsInnerDirectionEnum>
      get serializer =>
          _$regionalIndexDefComponentsInnerDirectionEnumSerializer;

  const RegionalIndexDefComponentsInnerDirectionEnum._(String name)
      : super(name);

  static BuiltSet<RegionalIndexDefComponentsInnerDirectionEnum> get values =>
      _$regionalIndexDefComponentsInnerDirectionEnumValues;
  static RegionalIndexDefComponentsInnerDirectionEnum valueOf(String name) =>
      _$regionalIndexDefComponentsInnerDirectionEnumValueOf(name);
}
