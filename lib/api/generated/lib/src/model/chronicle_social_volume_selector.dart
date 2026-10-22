//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_social_volume_selector_scopes_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_social_volume_selector.g.dart';

/// Chronicle layer `social-volume` (137): social volume series by topic, place or entity
///
/// Properties:
/// * [type]
/// * [scopes]
/// * [platforms]
/// * [metrics]
@BuiltValue()
abstract class ChronicleSocialVolumeSelector
    implements
        Built<ChronicleSocialVolumeSelector,
            ChronicleSocialVolumeSelectorBuilder> {
  @BuiltValueField(wireName: r'type')
  ChronicleSocialVolumeSelectorTypeEnum get type;
  // enum typeEnum {  social-volume,  };

  @BuiltValueField(wireName: r'scopes')
  BuiltList<ChronicleSocialVolumeSelectorScopesInner> get scopes;

  @BuiltValueField(wireName: r'platforms')
  BuiltList<String>? get platforms;

  @BuiltValueField(wireName: r'metrics')
  BuiltList<ChronicleSocialVolumeSelectorMetricsEnum>? get metrics;
  // enum metricsEnum {  posts,  uniqueAuthors,  reposts,  engagement,  };

  ChronicleSocialVolumeSelector._();

  factory ChronicleSocialVolumeSelector(
          [void updates(ChronicleSocialVolumeSelectorBuilder b)]) =
      _$ChronicleSocialVolumeSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSocialVolumeSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSocialVolumeSelector> get serializer =>
      _$ChronicleSocialVolumeSelectorSerializer();
}

class _$ChronicleSocialVolumeSelectorSerializer
    implements PrimitiveSerializer<ChronicleSocialVolumeSelector> {
  @override
  final Iterable<Type> types = const [
    ChronicleSocialVolumeSelector,
    _$ChronicleSocialVolumeSelector
  ];

  @override
  final String wireName = r'ChronicleSocialVolumeSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSocialVolumeSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ChronicleSocialVolumeSelectorTypeEnum),
    );
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(
          BuiltList, [FullType(ChronicleSocialVolumeSelectorScopesInner)]),
    );
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.metrics != null) {
      yield r'metrics';
      yield serializers.serialize(
        object.metrics,
        specifiedType: const FullType(
            BuiltList, [FullType(ChronicleSocialVolumeSelectorMetricsEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSocialVolumeSelector object, {
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
    required ChronicleSocialVolumeSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ChronicleSocialVolumeSelectorTypeEnum),
          ) as ChronicleSocialVolumeSelectorTypeEnum;
          result.type = valueDes;
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(ChronicleSocialVolumeSelectorScopesInner)]),
          ) as BuiltList<ChronicleSocialVolumeSelectorScopesInner>;
          result.scopes.replace(valueDes);
          break;
        case r'platforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
        case r'metrics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(ChronicleSocialVolumeSelectorMetricsEnum)]),
          ) as BuiltList<ChronicleSocialVolumeSelectorMetricsEnum>?;
          if (valueDes == null) continue;
          result.metrics.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSocialVolumeSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSocialVolumeSelectorBuilder();
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

class ChronicleSocialVolumeSelectorTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'social-volume')
  static const ChronicleSocialVolumeSelectorTypeEnum socialVolume =
      _$chronicleSocialVolumeSelectorTypeEnum_socialVolume;

  static Serializer<ChronicleSocialVolumeSelectorTypeEnum> get serializer =>
      _$chronicleSocialVolumeSelectorTypeEnumSerializer;

  const ChronicleSocialVolumeSelectorTypeEnum._(String name) : super(name);

  static BuiltSet<ChronicleSocialVolumeSelectorTypeEnum> get values =>
      _$chronicleSocialVolumeSelectorTypeEnumValues;
  static ChronicleSocialVolumeSelectorTypeEnum valueOf(String name) =>
      _$chronicleSocialVolumeSelectorTypeEnumValueOf(name);
}

class ChronicleSocialVolumeSelectorMetricsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'posts')
  static const ChronicleSocialVolumeSelectorMetricsEnum posts =
      _$chronicleSocialVolumeSelectorMetricsEnum_posts;
  @BuiltValueEnumConst(wireName: r'uniqueAuthors')
  static const ChronicleSocialVolumeSelectorMetricsEnum uniqueAuthors =
      _$chronicleSocialVolumeSelectorMetricsEnum_uniqueAuthors;
  @BuiltValueEnumConst(wireName: r'reposts')
  static const ChronicleSocialVolumeSelectorMetricsEnum reposts =
      _$chronicleSocialVolumeSelectorMetricsEnum_reposts;
  @BuiltValueEnumConst(wireName: r'engagement')
  static const ChronicleSocialVolumeSelectorMetricsEnum engagement =
      _$chronicleSocialVolumeSelectorMetricsEnum_engagement;

  static Serializer<ChronicleSocialVolumeSelectorMetricsEnum> get serializer =>
      _$chronicleSocialVolumeSelectorMetricsEnumSerializer;

  const ChronicleSocialVolumeSelectorMetricsEnum._(String name) : super(name);

  static BuiltSet<ChronicleSocialVolumeSelectorMetricsEnum> get values =>
      _$chronicleSocialVolumeSelectorMetricsEnumValues;
  static ChronicleSocialVolumeSelectorMetricsEnum valueOf(String name) =>
      _$chronicleSocialVolumeSelectorMetricsEnumValueOf(name);
}
