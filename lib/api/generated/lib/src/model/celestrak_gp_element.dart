//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'celestrak_gp_element.g.dart';

/// One CCSDS OMM element set in CelesTrak `FORMAT=JSON` shape (064). Keys keep CelesTrak's upper-case OMM names for client compatibility.
///
/// Properties:
/// * [OBJECT_NAME]
/// * [OBJECT_ID]
/// * [EPOCH] - UTC, no zone suffix
/// * [MEAN_MOTION]
/// * [ECCENTRICITY]
/// * [INCLINATION]
/// * [RA_OF_ASC_NODE]
/// * [ARG_OF_PERICENTER]
/// * [MEAN_ANOMALY]
/// * [EPHEMERIS_TYPE]
/// * [CLASSIFICATION_TYPE]
/// * [NORAD_CAT_ID] - Up to 9 digits; never assume 5
/// * [ELEMENT_SET_NO]
/// * [REV_AT_EPOCH]
/// * [BSTAR]
/// * [MEAN_MOTION_DOT]
/// * [MEAN_MOTION_DDOT]
@BuiltValue()
abstract class CelestrakGpElement
    implements Built<CelestrakGpElement, CelestrakGpElementBuilder> {
  @BuiltValueField(wireName: r'OBJECT_NAME')
  String get OBJECT_NAME;

  @BuiltValueField(wireName: r'OBJECT_ID')
  String get OBJECT_ID;

  /// UTC, no zone suffix
  @BuiltValueField(wireName: r'EPOCH')
  String get EPOCH;

  @BuiltValueField(wireName: r'MEAN_MOTION')
  num get MEAN_MOTION;

  @BuiltValueField(wireName: r'ECCENTRICITY')
  num get ECCENTRICITY;

  @BuiltValueField(wireName: r'INCLINATION')
  num get INCLINATION;

  @BuiltValueField(wireName: r'RA_OF_ASC_NODE')
  num get RA_OF_ASC_NODE;

  @BuiltValueField(wireName: r'ARG_OF_PERICENTER')
  num get ARG_OF_PERICENTER;

  @BuiltValueField(wireName: r'MEAN_ANOMALY')
  num get MEAN_ANOMALY;

  @BuiltValueField(wireName: r'EPHEMERIS_TYPE')
  int? get EPHEMERIS_TYPE;

  @BuiltValueField(wireName: r'CLASSIFICATION_TYPE')
  String? get CLASSIFICATION_TYPE;

  /// Up to 9 digits; never assume 5
  @BuiltValueField(wireName: r'NORAD_CAT_ID')
  int get NORAD_CAT_ID;

  @BuiltValueField(wireName: r'ELEMENT_SET_NO')
  int? get ELEMENT_SET_NO;

  @BuiltValueField(wireName: r'REV_AT_EPOCH')
  int? get REV_AT_EPOCH;

  @BuiltValueField(wireName: r'BSTAR')
  num? get BSTAR;

  @BuiltValueField(wireName: r'MEAN_MOTION_DOT')
  num? get MEAN_MOTION_DOT;

  @BuiltValueField(wireName: r'MEAN_MOTION_DDOT')
  num? get MEAN_MOTION_DDOT;

  CelestrakGpElement._();

  factory CelestrakGpElement([void updates(CelestrakGpElementBuilder b)]) =
      _$CelestrakGpElement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CelestrakGpElementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CelestrakGpElement> get serializer =>
      _$CelestrakGpElementSerializer();
}

class _$CelestrakGpElementSerializer
    implements PrimitiveSerializer<CelestrakGpElement> {
  @override
  final Iterable<Type> types = const [CelestrakGpElement, _$CelestrakGpElement];

  @override
  final String wireName = r'CelestrakGpElement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CelestrakGpElement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'OBJECT_NAME';
    yield serializers.serialize(
      object.OBJECT_NAME,
      specifiedType: const FullType(String),
    );
    yield r'OBJECT_ID';
    yield serializers.serialize(
      object.OBJECT_ID,
      specifiedType: const FullType(String),
    );
    yield r'EPOCH';
    yield serializers.serialize(
      object.EPOCH,
      specifiedType: const FullType(String),
    );
    yield r'MEAN_MOTION';
    yield serializers.serialize(
      object.MEAN_MOTION,
      specifiedType: const FullType(num),
    );
    yield r'ECCENTRICITY';
    yield serializers.serialize(
      object.ECCENTRICITY,
      specifiedType: const FullType(num),
    );
    yield r'INCLINATION';
    yield serializers.serialize(
      object.INCLINATION,
      specifiedType: const FullType(num),
    );
    yield r'RA_OF_ASC_NODE';
    yield serializers.serialize(
      object.RA_OF_ASC_NODE,
      specifiedType: const FullType(num),
    );
    yield r'ARG_OF_PERICENTER';
    yield serializers.serialize(
      object.ARG_OF_PERICENTER,
      specifiedType: const FullType(num),
    );
    yield r'MEAN_ANOMALY';
    yield serializers.serialize(
      object.MEAN_ANOMALY,
      specifiedType: const FullType(num),
    );
    if (object.EPHEMERIS_TYPE != null) {
      yield r'EPHEMERIS_TYPE';
      yield serializers.serialize(
        object.EPHEMERIS_TYPE,
        specifiedType: const FullType(int),
      );
    }
    if (object.CLASSIFICATION_TYPE != null) {
      yield r'CLASSIFICATION_TYPE';
      yield serializers.serialize(
        object.CLASSIFICATION_TYPE,
        specifiedType: const FullType(String),
      );
    }
    yield r'NORAD_CAT_ID';
    yield serializers.serialize(
      object.NORAD_CAT_ID,
      specifiedType: const FullType(int),
    );
    if (object.ELEMENT_SET_NO != null) {
      yield r'ELEMENT_SET_NO';
      yield serializers.serialize(
        object.ELEMENT_SET_NO,
        specifiedType: const FullType(int),
      );
    }
    if (object.REV_AT_EPOCH != null) {
      yield r'REV_AT_EPOCH';
      yield serializers.serialize(
        object.REV_AT_EPOCH,
        specifiedType: const FullType(int),
      );
    }
    if (object.BSTAR != null) {
      yield r'BSTAR';
      yield serializers.serialize(
        object.BSTAR,
        specifiedType: const FullType(num),
      );
    }
    if (object.MEAN_MOTION_DOT != null) {
      yield r'MEAN_MOTION_DOT';
      yield serializers.serialize(
        object.MEAN_MOTION_DOT,
        specifiedType: const FullType(num),
      );
    }
    if (object.MEAN_MOTION_DDOT != null) {
      yield r'MEAN_MOTION_DDOT';
      yield serializers.serialize(
        object.MEAN_MOTION_DDOT,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CelestrakGpElement object, {
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
    required CelestrakGpElementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'OBJECT_NAME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.OBJECT_NAME = valueDes;
          break;
        case r'OBJECT_ID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.OBJECT_ID = valueDes;
          break;
        case r'EPOCH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.EPOCH = valueDes;
          break;
        case r'MEAN_MOTION':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.MEAN_MOTION = valueDes;
          break;
        case r'ECCENTRICITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ECCENTRICITY = valueDes;
          break;
        case r'INCLINATION':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.INCLINATION = valueDes;
          break;
        case r'RA_OF_ASC_NODE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.RA_OF_ASC_NODE = valueDes;
          break;
        case r'ARG_OF_PERICENTER':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ARG_OF_PERICENTER = valueDes;
          break;
        case r'MEAN_ANOMALY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.MEAN_ANOMALY = valueDes;
          break;
        case r'EPHEMERIS_TYPE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.EPHEMERIS_TYPE = valueDes;
          break;
        case r'CLASSIFICATION_TYPE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.CLASSIFICATION_TYPE = valueDes;
          break;
        case r'NORAD_CAT_ID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.NORAD_CAT_ID = valueDes;
          break;
        case r'ELEMENT_SET_NO':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ELEMENT_SET_NO = valueDes;
          break;
        case r'REV_AT_EPOCH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.REV_AT_EPOCH = valueDes;
          break;
        case r'BSTAR':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.BSTAR = valueDes;
          break;
        case r'MEAN_MOTION_DOT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.MEAN_MOTION_DOT = valueDes;
          break;
        case r'MEAN_MOTION_DDOT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.MEAN_MOTION_DDOT = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CelestrakGpElement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CelestrakGpElementBuilder();
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
