//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ground_station_payload.g.dart';

/// Payload of `ground-station` records (satdump-{station}, externalId = station)
///
/// Properties:
/// * [state]
/// * [currentTarget]
/// * [frequencyHz]
/// * [az] - 1° steps
/// * [el] - 1° steps
/// * [snrDb] - 1 dB steps
/// * [nextAos]
/// * [nextLos]
/// * [rotatorEngaged]
/// * [satdumpMode]
/// * [title]
@BuiltValue()
abstract class GroundStationPayload
    implements Built<GroundStationPayload, GroundStationPayloadBuilder> {
  @BuiltValueField(wireName: r'state')
  GroundStationPayloadStateEnum get state;
  // enum stateEnum {  idle,  tracking,  receiving,  locked,  unknown,  };

  @BuiltValueField(wireName: r'currentTarget')
  String? get currentTarget;

  @BuiltValueField(wireName: r'frequencyHz')
  int? get frequencyHz;

  /// 1° steps
  @BuiltValueField(wireName: r'az')
  int? get az;

  /// 1° steps
  @BuiltValueField(wireName: r'el')
  int? get el;

  /// 1 dB steps
  @BuiltValueField(wireName: r'snrDb')
  int? get snrDb;

  @BuiltValueField(wireName: r'nextAos')
  DateTime? get nextAos;

  @BuiltValueField(wireName: r'nextLos')
  DateTime? get nextLos;

  @BuiltValueField(wireName: r'rotatorEngaged')
  bool? get rotatorEngaged;

  @BuiltValueField(wireName: r'satdumpMode')
  GroundStationPayloadSatdumpModeEnum? get satdumpMode;
  // enum satdumpModeEnum {  live,  autotrack,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  GroundStationPayload._();

  factory GroundStationPayload([void updates(GroundStationPayloadBuilder b)]) =
      _$GroundStationPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroundStationPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroundStationPayload> get serializer =>
      _$GroundStationPayloadSerializer();
}

class _$GroundStationPayloadSerializer
    implements PrimitiveSerializer<GroundStationPayload> {
  @override
  final Iterable<Type> types = const [
    GroundStationPayload,
    _$GroundStationPayload
  ];

  @override
  final String wireName = r'GroundStationPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroundStationPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(GroundStationPayloadStateEnum),
    );
    if (object.currentTarget != null) {
      yield r'currentTarget';
      yield serializers.serialize(
        object.currentTarget,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.frequencyHz != null) {
      yield r'frequencyHz';
      yield serializers.serialize(
        object.frequencyHz,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.az != null) {
      yield r'az';
      yield serializers.serialize(
        object.az,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.el != null) {
      yield r'el';
      yield serializers.serialize(
        object.el,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.snrDb != null) {
      yield r'snrDb';
      yield serializers.serialize(
        object.snrDb,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.nextAos != null) {
      yield r'nextAos';
      yield serializers.serialize(
        object.nextAos,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.nextLos != null) {
      yield r'nextLos';
      yield serializers.serialize(
        object.nextLos,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.rotatorEngaged != null) {
      yield r'rotatorEngaged';
      yield serializers.serialize(
        object.rotatorEngaged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.satdumpMode != null) {
      yield r'satdumpMode';
      yield serializers.serialize(
        object.satdumpMode,
        specifiedType:
            const FullType.nullable(GroundStationPayloadSatdumpModeEnum),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GroundStationPayload object, {
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
    required GroundStationPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GroundStationPayloadStateEnum),
          ) as GroundStationPayloadStateEnum;
          result.state = valueDes;
          break;
        case r'currentTarget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentTarget = valueDes;
          break;
        case r'frequencyHz':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.frequencyHz = valueDes;
          break;
        case r'az':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.az = valueDes;
          break;
        case r'el':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.el = valueDes;
          break;
        case r'snrDb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.snrDb = valueDes;
          break;
        case r'nextAos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextAos = valueDes;
          break;
        case r'nextLos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextLos = valueDes;
          break;
        case r'rotatorEngaged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.rotatorEngaged = valueDes;
          break;
        case r'satdumpMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(GroundStationPayloadSatdumpModeEnum),
          ) as GroundStationPayloadSatdumpModeEnum?;
          if (valueDes == null) continue;
          result.satdumpMode = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroundStationPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroundStationPayloadBuilder();
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

class GroundStationPayloadStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'idle')
  static const GroundStationPayloadStateEnum idle =
      _$groundStationPayloadStateEnum_idle;
  @BuiltValueEnumConst(wireName: r'tracking')
  static const GroundStationPayloadStateEnum tracking =
      _$groundStationPayloadStateEnum_tracking;
  @BuiltValueEnumConst(wireName: r'receiving')
  static const GroundStationPayloadStateEnum receiving =
      _$groundStationPayloadStateEnum_receiving;
  @BuiltValueEnumConst(wireName: r'locked')
  static const GroundStationPayloadStateEnum locked =
      _$groundStationPayloadStateEnum_locked;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const GroundStationPayloadStateEnum unknown =
      _$groundStationPayloadStateEnum_unknown;

  static Serializer<GroundStationPayloadStateEnum> get serializer =>
      _$groundStationPayloadStateEnumSerializer;

  const GroundStationPayloadStateEnum._(String name) : super(name);

  static BuiltSet<GroundStationPayloadStateEnum> get values =>
      _$groundStationPayloadStateEnumValues;
  static GroundStationPayloadStateEnum valueOf(String name) =>
      _$groundStationPayloadStateEnumValueOf(name);
}

class GroundStationPayloadSatdumpModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'live')
  static const GroundStationPayloadSatdumpModeEnum live =
      _$groundStationPayloadSatdumpModeEnum_live;
  @BuiltValueEnumConst(wireName: r'autotrack')
  static const GroundStationPayloadSatdumpModeEnum autotrack =
      _$groundStationPayloadSatdumpModeEnum_autotrack;

  static Serializer<GroundStationPayloadSatdumpModeEnum> get serializer =>
      _$groundStationPayloadSatdumpModeEnumSerializer;

  const GroundStationPayloadSatdumpModeEnum._(String name) : super(name);

  static BuiltSet<GroundStationPayloadSatdumpModeEnum> get values =>
      _$groundStationPayloadSatdumpModeEnumValues;
  static GroundStationPayloadSatdumpModeEnum valueOf(String name) =>
      _$groundStationPayloadSatdumpModeEnumValueOf(name);
}
