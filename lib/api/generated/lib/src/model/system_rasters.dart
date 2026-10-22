//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/system_rasters_glm.dart';
import 'package:foresignal_api/src/model/system_rasters_caches_value.dart';
import 'package:foresignal_api/src/model/system_rasters_render_queue.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_rasters.g.dart';

/// Raster subsystem block of `/v1/system` (042, extended by 043, 045, 048)
///
/// Properties:
/// * [profile]
/// * [products]
/// * [frames]
/// * [storeBytes]
/// * [mediaBytes] - Media store bytes (043); count against the disk quota
/// * [diskQuotaGb]
/// * [diskQuotaPct] - Frame store, media store and GLM archive against the quota; at ≥ 90 % `/v1/system` degrades
/// * [caches] - Per-cache metrics (frame, tile, index)
/// * [renderQueue]
/// * [renderBusyLastHour] - RENDER_BUSY responses in the last hour
/// * [mbDownloadedToday]
/// * [glm]
@BuiltValue()
abstract class SystemRasters
    implements Built<SystemRasters, SystemRastersBuilder> {
  @BuiltValueField(wireName: r'profile')
  SystemRastersProfileEnum get profile;
  // enum profileEnum {  small,  large,  };

  @BuiltValueField(wireName: r'products')
  int? get products;

  @BuiltValueField(wireName: r'frames')
  int? get frames;

  @BuiltValueField(wireName: r'storeBytes')
  int? get storeBytes;

  /// Media store bytes (043); count against the disk quota
  @BuiltValueField(wireName: r'mediaBytes')
  int? get mediaBytes;

  @BuiltValueField(wireName: r'diskQuotaGb')
  num? get diskQuotaGb;

  /// Frame store, media store and GLM archive against the quota; at ≥ 90 % `/v1/system` degrades
  @BuiltValueField(wireName: r'diskQuotaPct')
  num? get diskQuotaPct;

  /// Per-cache metrics (frame, tile, index)
  @BuiltValueField(wireName: r'caches')
  BuiltMap<String, SystemRastersCachesValue>? get caches;

  @BuiltValueField(wireName: r'renderQueue')
  SystemRastersRenderQueue? get renderQueue;

  /// RENDER_BUSY responses in the last hour
  @BuiltValueField(wireName: r'renderBusyLastHour')
  int? get renderBusyLastHour;

  @BuiltValueField(wireName: r'mbDownloadedToday')
  num? get mbDownloadedToday;

  @BuiltValueField(wireName: r'glm')
  SystemRastersGlm? get glm;

  SystemRasters._();

  factory SystemRasters([void updates(SystemRastersBuilder b)]) =
      _$SystemRasters;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemRastersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemRasters> get serializer =>
      _$SystemRastersSerializer();
}

class _$SystemRastersSerializer implements PrimitiveSerializer<SystemRasters> {
  @override
  final Iterable<Type> types = const [SystemRasters, _$SystemRasters];

  @override
  final String wireName = r'SystemRasters';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemRasters object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'profile';
    yield serializers.serialize(
      object.profile,
      specifiedType: const FullType(SystemRastersProfileEnum),
    );
    if (object.products != null) {
      yield r'products';
      yield serializers.serialize(
        object.products,
        specifiedType: const FullType(int),
      );
    }
    if (object.frames != null) {
      yield r'frames';
      yield serializers.serialize(
        object.frames,
        specifiedType: const FullType(int),
      );
    }
    if (object.storeBytes != null) {
      yield r'storeBytes';
      yield serializers.serialize(
        object.storeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.mediaBytes != null) {
      yield r'mediaBytes';
      yield serializers.serialize(
        object.mediaBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.diskQuotaGb != null) {
      yield r'diskQuotaGb';
      yield serializers.serialize(
        object.diskQuotaGb,
        specifiedType: const FullType(num),
      );
    }
    if (object.diskQuotaPct != null) {
      yield r'diskQuotaPct';
      yield serializers.serialize(
        object.diskQuotaPct,
        specifiedType: const FullType(num),
      );
    }
    if (object.caches != null) {
      yield r'caches';
      yield serializers.serialize(
        object.caches,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType(SystemRastersCachesValue)]),
      );
    }
    if (object.renderQueue != null) {
      yield r'renderQueue';
      yield serializers.serialize(
        object.renderQueue,
        specifiedType: const FullType(SystemRastersRenderQueue),
      );
    }
    if (object.renderBusyLastHour != null) {
      yield r'renderBusyLastHour';
      yield serializers.serialize(
        object.renderBusyLastHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.mbDownloadedToday != null) {
      yield r'mbDownloadedToday';
      yield serializers.serialize(
        object.mbDownloadedToday,
        specifiedType: const FullType(num),
      );
    }
    if (object.glm != null) {
      yield r'glm';
      yield serializers.serialize(
        object.glm,
        specifiedType: const FullType(SystemRastersGlm),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemRasters object, {
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
    required SystemRastersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SystemRastersProfileEnum),
          ) as SystemRastersProfileEnum;
          result.profile = valueDes;
          break;
        case r'products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.products = valueDes;
          break;
        case r'frames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.frames = valueDes;
          break;
        case r'storeBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.storeBytes = valueDes;
          break;
        case r'mediaBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.mediaBytes = valueDes;
          break;
        case r'diskQuotaGb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.diskQuotaGb = valueDes;
          break;
        case r'diskQuotaPct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.diskQuotaPct = valueDes;
          break;
        case r'caches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap,
                [FullType(String), FullType(SystemRastersCachesValue)]),
          ) as BuiltMap<String, SystemRastersCachesValue>?;
          if (valueDes == null) continue;
          result.caches.replace(valueDes);
          break;
        case r'renderQueue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SystemRastersRenderQueue),
          ) as SystemRastersRenderQueue?;
          if (valueDes == null) continue;
          result.renderQueue.replace(valueDes);
          break;
        case r'renderBusyLastHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.renderBusyLastHour = valueDes;
          break;
        case r'mbDownloadedToday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.mbDownloadedToday = valueDes;
          break;
        case r'glm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SystemRastersGlm),
          ) as SystemRastersGlm?;
          if (valueDes == null) continue;
          result.glm.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemRasters deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemRastersBuilder();
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

class SystemRastersProfileEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'small')
  static const SystemRastersProfileEnum small =
      _$systemRastersProfileEnum_small;
  @BuiltValueEnumConst(wireName: r'large')
  static const SystemRastersProfileEnum large =
      _$systemRastersProfileEnum_large;

  static Serializer<SystemRastersProfileEnum> get serializer =>
      _$systemRastersProfileEnumSerializer;

  const SystemRastersProfileEnum._(String name) : super(name);

  static BuiltSet<SystemRastersProfileEnum> get values =>
      _$systemRastersProfileEnumValues;
  static SystemRastersProfileEnum valueOf(String name) =>
      _$systemRastersProfileEnumValueOf(name);
}
