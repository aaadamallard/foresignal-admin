//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/stats_grid_features_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_grid.g.dart';

/// Spatial aggregate as a GeoJSON FeatureCollection of cells (038)
///
/// Properties:
/// * [type]
/// * [cellSystem]
/// * [res] - H3 resolution (rollup mode)
/// * [sizeKm]
/// * [measure]
/// * [backend]
/// * [features]
@BuiltValue()
abstract class StatsGrid implements Built<StatsGrid, StatsGridBuilder> {
  @BuiltValueField(wireName: r'type')
  StatsGridTypeEnum get type;
  // enum typeEnum {  FeatureCollection,  };

  @BuiltValueField(wireName: r'cellSystem')
  StatsGridCellSystemEnum get cellSystem;
  // enum cellSystemEnum {  h3,  hex3857,  };

  /// H3 resolution (rollup mode)
  @BuiltValueField(wireName: r'res')
  int? get res;

  @BuiltValueField(wireName: r'sizeKm')
  num? get sizeKm;

  @BuiltValueField(wireName: r'measure')
  String? get measure;

  @BuiltValueField(wireName: r'backend')
  StatsGridBackendEnum? get backend;
  // enum backendEnum {  rollup,  raw,  };

  @BuiltValueField(wireName: r'features')
  BuiltList<StatsGridFeaturesInner> get features;

  StatsGrid._();

  factory StatsGrid([void updates(StatsGridBuilder b)]) = _$StatsGrid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsGridBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsGrid> get serializer => _$StatsGridSerializer();
}

class _$StatsGridSerializer implements PrimitiveSerializer<StatsGrid> {
  @override
  final Iterable<Type> types = const [StatsGrid, _$StatsGrid];

  @override
  final String wireName = r'StatsGrid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsGrid object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(StatsGridTypeEnum),
    );
    yield r'cellSystem';
    yield serializers.serialize(
      object.cellSystem,
      specifiedType: const FullType(StatsGridCellSystemEnum),
    );
    if (object.res != null) {
      yield r'res';
      yield serializers.serialize(
        object.res,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sizeKm != null) {
      yield r'sizeKm';
      yield serializers.serialize(
        object.sizeKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.measure != null) {
      yield r'measure';
      yield serializers.serialize(
        object.measure,
        specifiedType: const FullType(String),
      );
    }
    if (object.backend != null) {
      yield r'backend';
      yield serializers.serialize(
        object.backend,
        specifiedType: const FullType(StatsGridBackendEnum),
      );
    }
    yield r'features';
    yield serializers.serialize(
      object.features,
      specifiedType:
          const FullType(BuiltList, [FullType(StatsGridFeaturesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsGrid object, {
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
    required StatsGridBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatsGridTypeEnum),
          ) as StatsGridTypeEnum;
          result.type = valueDes;
          break;
        case r'cellSystem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatsGridCellSystemEnum),
          ) as StatsGridCellSystemEnum;
          result.cellSystem = valueDes;
          break;
        case r'res':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.res = valueDes;
          break;
        case r'sizeKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sizeKm = valueDes;
          break;
        case r'measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.measure = valueDes;
          break;
        case r'backend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatsGridBackendEnum),
          ) as StatsGridBackendEnum?;
          if (valueDes == null) continue;
          result.backend = valueDes;
          break;
        case r'features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(StatsGridFeaturesInner)]),
          ) as BuiltList<StatsGridFeaturesInner>;
          result.features.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsGrid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsGridBuilder();
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

class StatsGridTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FeatureCollection')
  static const StatsGridTypeEnum featureCollection =
      _$statsGridTypeEnum_featureCollection;

  static Serializer<StatsGridTypeEnum> get serializer =>
      _$statsGridTypeEnumSerializer;

  const StatsGridTypeEnum._(String name) : super(name);

  static BuiltSet<StatsGridTypeEnum> get values => _$statsGridTypeEnumValues;
  static StatsGridTypeEnum valueOf(String name) =>
      _$statsGridTypeEnumValueOf(name);
}

class StatsGridCellSystemEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'h3')
  static const StatsGridCellSystemEnum h3 = _$statsGridCellSystemEnum_h3;
  @BuiltValueEnumConst(wireName: r'hex3857')
  static const StatsGridCellSystemEnum hex3857 =
      _$statsGridCellSystemEnum_hex3857;

  static Serializer<StatsGridCellSystemEnum> get serializer =>
      _$statsGridCellSystemEnumSerializer;

  const StatsGridCellSystemEnum._(String name) : super(name);

  static BuiltSet<StatsGridCellSystemEnum> get values =>
      _$statsGridCellSystemEnumValues;
  static StatsGridCellSystemEnum valueOf(String name) =>
      _$statsGridCellSystemEnumValueOf(name);
}

class StatsGridBackendEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'rollup')
  static const StatsGridBackendEnum rollup = _$statsGridBackendEnum_rollup;
  @BuiltValueEnumConst(wireName: r'raw')
  static const StatsGridBackendEnum raw = _$statsGridBackendEnum_raw;

  static Serializer<StatsGridBackendEnum> get serializer =>
      _$statsGridBackendEnumSerializer;

  const StatsGridBackendEnum._(String name) : super(name);

  static BuiltSet<StatsGridBackendEnum> get values =>
      _$statsGridBackendEnumValues;
  static StatsGridBackendEnum valueOf(String name) =>
      _$statsGridBackendEnumValueOf(name);
}
