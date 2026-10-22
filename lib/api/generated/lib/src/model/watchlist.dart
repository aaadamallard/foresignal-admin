//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchlist.g.dart';

/// A watchlist of identifiers (036); up to 100,000 items
///
/// Properties:
/// * [name]
/// * [identity]
/// * [normalize] - Defaults: icao24/registration/callsign upper, mmsi/imo digits, entity/custom none
/// * [description]
/// * [id]
/// * [itemCount]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Watchlist implements Built<Watchlist, WatchlistBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'identity')
  WatchlistIdentityEnum get identity;
  // enum identityEnum {  icao24,  registration,  callsign,  mmsi,  imo,  entity,  custom,  };

  /// Defaults: icao24/registration/callsign upper, mmsi/imo digits, entity/custom none
  @BuiltValueField(wireName: r'normalize')
  WatchlistNormalizeEnum? get normalize;
  // enum normalizeEnum {  upper,  lower,  digits,  none,  };

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'itemCount')
  int get itemCount;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  Watchlist._();

  factory Watchlist([void updates(WatchlistBuilder b)]) = _$Watchlist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchlistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Watchlist> get serializer => _$WatchlistSerializer();
}

class _$WatchlistSerializer implements PrimitiveSerializer<Watchlist> {
  @override
  final Iterable<Type> types = const [Watchlist, _$Watchlist];

  @override
  final String wireName = r'Watchlist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Watchlist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'identity';
    yield serializers.serialize(
      object.identity,
      specifiedType: const FullType(WatchlistIdentityEnum),
    );
    if (object.normalize != null) {
      yield r'normalize';
      yield serializers.serialize(
        object.normalize,
        specifiedType: const FullType(WatchlistNormalizeEnum),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'itemCount';
    yield serializers.serialize(
      object.itemCount,
      specifiedType: const FullType(int),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Watchlist object, {
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
    required WatchlistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'identity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WatchlistIdentityEnum),
          ) as WatchlistIdentityEnum;
          result.identity = valueDes;
          break;
        case r'normalize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WatchlistNormalizeEnum),
          ) as WatchlistNormalizeEnum?;
          if (valueDes == null) continue;
          result.normalize = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'itemCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.itemCount = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Watchlist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchlistBuilder();
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

class WatchlistIdentityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'icao24')
  static const WatchlistIdentityEnum icao24 = _$watchlistIdentityEnum_icao24;
  @BuiltValueEnumConst(wireName: r'registration')
  static const WatchlistIdentityEnum registration =
      _$watchlistIdentityEnum_registration;
  @BuiltValueEnumConst(wireName: r'callsign')
  static const WatchlistIdentityEnum callsign =
      _$watchlistIdentityEnum_callsign;
  @BuiltValueEnumConst(wireName: r'mmsi')
  static const WatchlistIdentityEnum mmsi = _$watchlistIdentityEnum_mmsi;
  @BuiltValueEnumConst(wireName: r'imo')
  static const WatchlistIdentityEnum imo = _$watchlistIdentityEnum_imo;
  @BuiltValueEnumConst(wireName: r'entity')
  static const WatchlistIdentityEnum entity = _$watchlistIdentityEnum_entity;
  @BuiltValueEnumConst(wireName: r'custom')
  static const WatchlistIdentityEnum custom = _$watchlistIdentityEnum_custom;

  static Serializer<WatchlistIdentityEnum> get serializer =>
      _$watchlistIdentityEnumSerializer;

  const WatchlistIdentityEnum._(String name) : super(name);

  static BuiltSet<WatchlistIdentityEnum> get values =>
      _$watchlistIdentityEnumValues;
  static WatchlistIdentityEnum valueOf(String name) =>
      _$watchlistIdentityEnumValueOf(name);
}

/// Defaults: icao24/registration/callsign upper, mmsi/imo digits, entity/custom none
class WatchlistNormalizeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'upper')
  static const WatchlistNormalizeEnum upper = _$watchlistNormalizeEnum_upper;
  @BuiltValueEnumConst(wireName: r'lower')
  static const WatchlistNormalizeEnum lower = _$watchlistNormalizeEnum_lower;
  @BuiltValueEnumConst(wireName: r'digits')
  static const WatchlistNormalizeEnum digits = _$watchlistNormalizeEnum_digits;
  @BuiltValueEnumConst(wireName: r'none')
  static const WatchlistNormalizeEnum none = _$watchlistNormalizeEnum_none;

  static Serializer<WatchlistNormalizeEnum> get serializer =>
      _$watchlistNormalizeEnumSerializer;

  const WatchlistNormalizeEnum._(String name) : super(name);

  static BuiltSet<WatchlistNormalizeEnum> get values =>
      _$watchlistNormalizeEnumValues;
  static WatchlistNormalizeEnum valueOf(String name) =>
      _$watchlistNormalizeEnumValueOf(name);
}
