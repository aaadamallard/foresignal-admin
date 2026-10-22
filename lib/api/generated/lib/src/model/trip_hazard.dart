//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trip_hazard.g.dart';

/// A hazard found on or near a trip corridor (114)
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [sourceId]
/// * [externalId]
/// * [kind]
/// * [title]
/// * [severity]
/// * [section] - on route, near route (within 2 × buffer), or a forecast hazard whose validFrom falls in the window
/// * [distanceAlongRouteM]
/// * [distanceFromRouteM]
/// * [validFrom]
/// * [validUntil]
/// * [ahead] - With an anchor: hazard is ahead of the anchor's projection
/// * [etaSeconds]
@BuiltValue()
abstract class TripHazard implements Built<TripHazard, TripHazardBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'severity')
  Severity? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// on route, near route (within 2 × buffer), or a forecast hazard whose validFrom falls in the window
  @BuiltValueField(wireName: r'section')
  TripHazardSectionEnum get section;
  // enum sectionEnum {  on-route,  near-route,  timing,  };

  @BuiltValueField(wireName: r'distanceAlongRouteM')
  num get distanceAlongRouteM;

  @BuiltValueField(wireName: r'distanceFromRouteM')
  num? get distanceFromRouteM;

  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  @BuiltValueField(wireName: r'validUntil')
  DateTime? get validUntil;

  /// With an anchor: hazard is ahead of the anchor's projection
  @BuiltValueField(wireName: r'ahead')
  bool? get ahead;

  @BuiltValueField(wireName: r'etaSeconds')
  num? get etaSeconds;

  TripHazard._();

  factory TripHazard([void updates(TripHazardBuilder b)]) = _$TripHazard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TripHazardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TripHazard> get serializer => _$TripHazardSerializer();
}

class _$TripHazardSerializer implements PrimitiveSerializer<TripHazard> {
  @override
  final Iterable<Type> types = const [TripHazard, _$TripHazard];

  @override
  final String wireName = r'TripHazard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TripHazard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    yield r'section';
    yield serializers.serialize(
      object.section,
      specifiedType: const FullType(TripHazardSectionEnum),
    );
    yield r'distanceAlongRouteM';
    yield serializers.serialize(
      object.distanceAlongRouteM,
      specifiedType: const FullType(num),
    );
    if (object.distanceFromRouteM != null) {
      yield r'distanceFromRouteM';
      yield serializers.serialize(
        object.distanceFromRouteM,
        specifiedType: const FullType(num),
      );
    }
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.ahead != null) {
      yield r'ahead';
      yield serializers.serialize(
        object.ahead,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.etaSeconds != null) {
      yield r'etaSeconds';
      yield serializers.serialize(
        object.etaSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TripHazard object, {
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
    required TripHazardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'section':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TripHazardSectionEnum),
                  )
                  as TripHazardSectionEnum;
          result.section = valueDes;
          break;
        case r'distanceAlongRouteM':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.distanceAlongRouteM = valueDes;
          break;
        case r'distanceFromRouteM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceFromRouteM = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
          break;
        case r'validUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validUntil = valueDes;
          break;
        case r'ahead':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.ahead = valueDes;
          break;
        case r'etaSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.etaSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TripHazard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TripHazardBuilder();
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

/// on route, near route (within 2 × buffer), or a forecast hazard whose validFrom falls in the window
class TripHazardSectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'on-route')
  static const TripHazardSectionEnum onRoute = _$tripHazardSectionEnum_onRoute;
  @BuiltValueEnumConst(wireName: r'near-route')
  static const TripHazardSectionEnum nearRoute =
      _$tripHazardSectionEnum_nearRoute;
  @BuiltValueEnumConst(wireName: r'timing')
  static const TripHazardSectionEnum timing = _$tripHazardSectionEnum_timing;

  static Serializer<TripHazardSectionEnum> get serializer =>
      _$tripHazardSectionEnumSerializer;

  const TripHazardSectionEnum._(String name) : super(name);

  static BuiltSet<TripHazardSectionEnum> get values =>
      _$tripHazardSectionEnumValues;
  static TripHazardSectionEnum valueOf(String name) =>
      _$tripHazardSectionEnumValueOf(name);
}
