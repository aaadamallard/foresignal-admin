//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchlist_input.g.dart';

/// Create or replace a watchlist (036)
///
/// Properties:
/// * [name]
/// * [identity]
/// * [normalize] - Defaults: icao24/registration/callsign upper, mmsi/imo digits, entity/custom none
/// * [description]
@BuiltValue()
abstract class WatchlistInput
    implements Built<WatchlistInput, WatchlistInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'identity')
  WatchlistInputIdentityEnum get identity;
  // enum identityEnum {  icao24,  registration,  callsign,  mmsi,  imo,  entity,  custom,  };

  /// Defaults: icao24/registration/callsign upper, mmsi/imo digits, entity/custom none
  @BuiltValueField(wireName: r'normalize')
  WatchlistInputNormalizeEnum? get normalize;
  // enum normalizeEnum {  upper,  lower,  digits,  none,  };

  @BuiltValueField(wireName: r'description')
  String? get description;

  WatchlistInput._();

  factory WatchlistInput([void updates(WatchlistInputBuilder b)]) =
      _$WatchlistInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchlistInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchlistInput> get serializer =>
      _$WatchlistInputSerializer();
}

class _$WatchlistInputSerializer
    implements PrimitiveSerializer<WatchlistInput> {
  @override
  final Iterable<Type> types = const [WatchlistInput, _$WatchlistInput];

  @override
  final String wireName = r'WatchlistInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchlistInput object, {
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
      specifiedType: const FullType(WatchlistInputIdentityEnum),
    );
    if (object.normalize != null) {
      yield r'normalize';
      yield serializers.serialize(
        object.normalize,
        specifiedType: const FullType(WatchlistInputNormalizeEnum),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchlistInput object, {
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
    required WatchlistInputBuilder result,
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
            specifiedType: const FullType(WatchlistInputIdentityEnum),
          ) as WatchlistInputIdentityEnum;
          result.identity = valueDes;
          break;
        case r'normalize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WatchlistInputNormalizeEnum),
          ) as WatchlistInputNormalizeEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchlistInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchlistInputBuilder();
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

class WatchlistInputIdentityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'icao24')
  static const WatchlistInputIdentityEnum icao24 =
      _$watchlistInputIdentityEnum_icao24;
  @BuiltValueEnumConst(wireName: r'registration')
  static const WatchlistInputIdentityEnum registration =
      _$watchlistInputIdentityEnum_registration;
  @BuiltValueEnumConst(wireName: r'callsign')
  static const WatchlistInputIdentityEnum callsign =
      _$watchlistInputIdentityEnum_callsign;
  @BuiltValueEnumConst(wireName: r'mmsi')
  static const WatchlistInputIdentityEnum mmsi =
      _$watchlistInputIdentityEnum_mmsi;
  @BuiltValueEnumConst(wireName: r'imo')
  static const WatchlistInputIdentityEnum imo =
      _$watchlistInputIdentityEnum_imo;
  @BuiltValueEnumConst(wireName: r'entity')
  static const WatchlistInputIdentityEnum entity =
      _$watchlistInputIdentityEnum_entity;
  @BuiltValueEnumConst(wireName: r'custom')
  static const WatchlistInputIdentityEnum custom =
      _$watchlistInputIdentityEnum_custom;

  static Serializer<WatchlistInputIdentityEnum> get serializer =>
      _$watchlistInputIdentityEnumSerializer;

  const WatchlistInputIdentityEnum._(String name) : super(name);

  static BuiltSet<WatchlistInputIdentityEnum> get values =>
      _$watchlistInputIdentityEnumValues;
  static WatchlistInputIdentityEnum valueOf(String name) =>
      _$watchlistInputIdentityEnumValueOf(name);
}

/// Defaults: icao24/registration/callsign upper, mmsi/imo digits, entity/custom none
class WatchlistInputNormalizeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'upper')
  static const WatchlistInputNormalizeEnum upper =
      _$watchlistInputNormalizeEnum_upper;
  @BuiltValueEnumConst(wireName: r'lower')
  static const WatchlistInputNormalizeEnum lower =
      _$watchlistInputNormalizeEnum_lower;
  @BuiltValueEnumConst(wireName: r'digits')
  static const WatchlistInputNormalizeEnum digits =
      _$watchlistInputNormalizeEnum_digits;
  @BuiltValueEnumConst(wireName: r'none')
  static const WatchlistInputNormalizeEnum none =
      _$watchlistInputNormalizeEnum_none;

  static Serializer<WatchlistInputNormalizeEnum> get serializer =>
      _$watchlistInputNormalizeEnumSerializer;

  const WatchlistInputNormalizeEnum._(String name) : super(name);

  static BuiltSet<WatchlistInputNormalizeEnum> get values =>
      _$watchlistInputNormalizeEnumValues;
  static WatchlistInputNormalizeEnum valueOf(String name) =>
      _$watchlistInputNormalizeEnumValueOf(name);
}
