//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'own_tracks_message.g.dart';

/// OwnTracks HTTP-mode message accepted by the `owntracks` format (039). `_type=location` → kind tracker; `transition` → kind tracker-transition; `waypoint`, `lwt`, `card`, `status` and `encrypted` are acknowledged with `[]` and ignored.
///
/// Properties:
/// * [type]
/// * [lat]
/// * [lon]
/// * [tst] - Epoch seconds → observedAt
/// * [acc] - Accuracy (m) → quality.accuracyMeters
/// * [alt]
/// * [vel] - km/h → speedMs
/// * [cog]
/// * [batt]
/// * [bs] - Battery status → charging
/// * [conn]
/// * [tid]
/// * [event]
/// * [desc]
/// * [wtst]
@BuiltValue()
abstract class OwnTracksMessage
    implements Built<OwnTracksMessage, OwnTracksMessageBuilder> {
  @BuiltValueField(wireName: r'_type')
  OwnTracksMessageTypeEnum get type;
  // enum typeEnum {  location,  transition,  waypoint,  lwt,  card,  status,  encrypted,  };

  @BuiltValueField(wireName: r'lat')
  num? get lat;

  @BuiltValueField(wireName: r'lon')
  num? get lon;

  /// Epoch seconds → observedAt
  @BuiltValueField(wireName: r'tst')
  int? get tst;

  /// Accuracy (m) → quality.accuracyMeters
  @BuiltValueField(wireName: r'acc')
  num? get acc;

  @BuiltValueField(wireName: r'alt')
  num? get alt;

  /// km/h → speedMs
  @BuiltValueField(wireName: r'vel')
  num? get vel;

  @BuiltValueField(wireName: r'cog')
  num? get cog;

  @BuiltValueField(wireName: r'batt')
  int? get batt;

  /// Battery status → charging
  @BuiltValueField(wireName: r'bs')
  int? get bs;

  @BuiltValueField(wireName: r'conn')
  String? get conn;

  @BuiltValueField(wireName: r'tid')
  String? get tid;

  @BuiltValueField(wireName: r'event')
  String? get event;

  @BuiltValueField(wireName: r'desc')
  String? get desc;

  @BuiltValueField(wireName: r'wtst')
  int? get wtst;

  OwnTracksMessage._();

  factory OwnTracksMessage([void updates(OwnTracksMessageBuilder b)]) =
      _$OwnTracksMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OwnTracksMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OwnTracksMessage> get serializer =>
      _$OwnTracksMessageSerializer();
}

class _$OwnTracksMessageSerializer
    implements PrimitiveSerializer<OwnTracksMessage> {
  @override
  final Iterable<Type> types = const [OwnTracksMessage, _$OwnTracksMessage];

  @override
  final String wireName = r'OwnTracksMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OwnTracksMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'_type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OwnTracksMessageTypeEnum),
    );
    if (object.lat != null) {
      yield r'lat';
      yield serializers.serialize(
        object.lat,
        specifiedType: const FullType(num),
      );
    }
    if (object.lon != null) {
      yield r'lon';
      yield serializers.serialize(
        object.lon,
        specifiedType: const FullType(num),
      );
    }
    if (object.tst != null) {
      yield r'tst';
      yield serializers.serialize(
        object.tst,
        specifiedType: const FullType(int),
      );
    }
    if (object.acc != null) {
      yield r'acc';
      yield serializers.serialize(
        object.acc,
        specifiedType: const FullType(num),
      );
    }
    if (object.alt != null) {
      yield r'alt';
      yield serializers.serialize(
        object.alt,
        specifiedType: const FullType(num),
      );
    }
    if (object.vel != null) {
      yield r'vel';
      yield serializers.serialize(
        object.vel,
        specifiedType: const FullType(num),
      );
    }
    if (object.cog != null) {
      yield r'cog';
      yield serializers.serialize(
        object.cog,
        specifiedType: const FullType(num),
      );
    }
    if (object.batt != null) {
      yield r'batt';
      yield serializers.serialize(
        object.batt,
        specifiedType: const FullType(int),
      );
    }
    if (object.bs != null) {
      yield r'bs';
      yield serializers.serialize(
        object.bs,
        specifiedType: const FullType(int),
      );
    }
    if (object.conn != null) {
      yield r'conn';
      yield serializers.serialize(
        object.conn,
        specifiedType: const FullType(String),
      );
    }
    if (object.tid != null) {
      yield r'tid';
      yield serializers.serialize(
        object.tid,
        specifiedType: const FullType(String),
      );
    }
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(String),
      );
    }
    if (object.desc != null) {
      yield r'desc';
      yield serializers.serialize(
        object.desc,
        specifiedType: const FullType(String),
      );
    }
    if (object.wtst != null) {
      yield r'wtst';
      yield serializers.serialize(
        object.wtst,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OwnTracksMessage object, {
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
    required OwnTracksMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OwnTracksMessageTypeEnum),
                  )
                  as OwnTracksMessageTypeEnum;
          result.type = valueDes;
          break;
        case r'lat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lat = valueDes;
          break;
        case r'lon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lon = valueDes;
          break;
        case r'tst':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tst = valueDes;
          break;
        case r'acc':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.acc = valueDes;
          break;
        case r'alt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.alt = valueDes;
          break;
        case r'vel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.vel = valueDes;
          break;
        case r'cog':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.cog = valueDes;
          break;
        case r'batt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.batt = valueDes;
          break;
        case r'bs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bs = valueDes;
          break;
        case r'conn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.conn = valueDes;
          break;
        case r'tid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tid = valueDes;
          break;
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.event = valueDes;
          break;
        case r'desc':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.desc = valueDes;
          break;
        case r'wtst':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.wtst = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OwnTracksMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnTracksMessageBuilder();
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

class OwnTracksMessageTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'location')
  static const OwnTracksMessageTypeEnum location =
      _$ownTracksMessageTypeEnum_location;
  @BuiltValueEnumConst(wireName: r'transition')
  static const OwnTracksMessageTypeEnum transition =
      _$ownTracksMessageTypeEnum_transition;
  @BuiltValueEnumConst(wireName: r'waypoint')
  static const OwnTracksMessageTypeEnum waypoint =
      _$ownTracksMessageTypeEnum_waypoint;
  @BuiltValueEnumConst(wireName: r'lwt')
  static const OwnTracksMessageTypeEnum lwt = _$ownTracksMessageTypeEnum_lwt;
  @BuiltValueEnumConst(wireName: r'card')
  static const OwnTracksMessageTypeEnum card = _$ownTracksMessageTypeEnum_card;
  @BuiltValueEnumConst(wireName: r'status')
  static const OwnTracksMessageTypeEnum status =
      _$ownTracksMessageTypeEnum_status;
  @BuiltValueEnumConst(wireName: r'encrypted')
  static const OwnTracksMessageTypeEnum encrypted =
      _$ownTracksMessageTypeEnum_encrypted;

  static Serializer<OwnTracksMessageTypeEnum> get serializer =>
      _$ownTracksMessageTypeEnumSerializer;

  const OwnTracksMessageTypeEnum._(String name) : super(name);

  static BuiltSet<OwnTracksMessageTypeEnum> get values =>
      _$ownTracksMessageTypeEnumValues;
  static OwnTracksMessageTypeEnum valueOf(String name) =>
      _$ownTracksMessageTypeEnumValueOf(name);
}
