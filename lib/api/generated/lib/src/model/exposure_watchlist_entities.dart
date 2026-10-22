//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/exposure_watchlist_entities_counts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_watchlist_entities.g.dart';

/// Current counts of watchlist entities inside (036/098)
///
/// Properties:
/// * [status]
/// * [attribution]
/// * [counts]
@BuiltValue()
abstract class ExposureWatchlistEntities
    implements
        Built<ExposureWatchlistEntities, ExposureWatchlistEntitiesBuilder> {
  @BuiltValueField(wireName: r'status')
  ExposureWatchlistEntitiesStatusEnum get status;
  // enum statusEnum {  ok,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  @BuiltValueField(wireName: r'counts')
  BuiltList<ExposureWatchlistEntitiesCountsInner>? get counts;

  ExposureWatchlistEntities._();

  factory ExposureWatchlistEntities(
          [void updates(ExposureWatchlistEntitiesBuilder b)]) =
      _$ExposureWatchlistEntities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureWatchlistEntitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureWatchlistEntities> get serializer =>
      _$ExposureWatchlistEntitiesSerializer();
}

class _$ExposureWatchlistEntitiesSerializer
    implements PrimitiveSerializer<ExposureWatchlistEntities> {
  @override
  final Iterable<Type> types = const [
    ExposureWatchlistEntities,
    _$ExposureWatchlistEntities
  ];

  @override
  final String wireName = r'ExposureWatchlistEntities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureWatchlistEntities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExposureWatchlistEntitiesStatusEnum),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.counts != null) {
      yield r'counts';
      yield serializers.serialize(
        object.counts,
        specifiedType: const FullType(
            BuiltList, [FullType(ExposureWatchlistEntitiesCountsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureWatchlistEntities object, {
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
    required ExposureWatchlistEntitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExposureWatchlistEntitiesStatusEnum),
          ) as ExposureWatchlistEntitiesStatusEnum;
          result.status = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Attribution)]),
          ) as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'counts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ExposureWatchlistEntitiesCountsInner)]),
          ) as BuiltList<ExposureWatchlistEntitiesCountsInner>?;
          if (valueDes == null) continue;
          result.counts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureWatchlistEntities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureWatchlistEntitiesBuilder();
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

class ExposureWatchlistEntitiesStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ExposureWatchlistEntitiesStatusEnum ok =
      _$exposureWatchlistEntitiesStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const ExposureWatchlistEntitiesStatusEnum unavailable =
      _$exposureWatchlistEntitiesStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const ExposureWatchlistEntitiesStatusEnum notInstalled =
      _$exposureWatchlistEntitiesStatusEnum_notInstalled;

  static Serializer<ExposureWatchlistEntitiesStatusEnum> get serializer =>
      _$exposureWatchlistEntitiesStatusEnumSerializer;

  const ExposureWatchlistEntitiesStatusEnum._(String name) : super(name);

  static BuiltSet<ExposureWatchlistEntitiesStatusEnum> get values =>
      _$exposureWatchlistEntitiesStatusEnumValues;
  static ExposureWatchlistEntitiesStatusEnum valueOf(String name) =>
      _$exposureWatchlistEntitiesStatusEnumValueOf(name);
}
