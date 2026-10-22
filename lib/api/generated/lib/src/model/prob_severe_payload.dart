//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/prob_severe_payload_motion.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prob_severe_payload.g.dart';

/// Payload of `probsevere-object` records (mrms-probsevere; automated guidance, not a warning)
///
/// Properties:
/// * [probSevere]
/// * [probTor]
/// * [probHail]
/// * [probWind]
/// * [meshIn] - 0.25 in steps
/// * [compRefDbz]
/// * [vil]
/// * [echoTop50Kft]
/// * [flashRate]
/// * [muCape]
/// * [mlCape]
/// * [ebShearKt]
/// * [srh01km]
/// * [motion]
/// * [label]
/// * [automated]
/// * [notAWarning]
@BuiltValue()
abstract class ProbSeverePayload
    implements Built<ProbSeverePayload, ProbSeverePayloadBuilder> {
  @BuiltValueField(wireName: r'probSevere')
  int get probSevere;

  @BuiltValueField(wireName: r'probTor')
  int get probTor;

  @BuiltValueField(wireName: r'probHail')
  int get probHail;

  @BuiltValueField(wireName: r'probWind')
  int get probWind;

  /// 0.25 in steps
  @BuiltValueField(wireName: r'meshIn')
  num? get meshIn;

  @BuiltValueField(wireName: r'compRefDbz')
  num? get compRefDbz;

  @BuiltValueField(wireName: r'vil')
  num? get vil;

  @BuiltValueField(wireName: r'echoTop50Kft')
  num? get echoTop50Kft;

  @BuiltValueField(wireName: r'flashRate')
  num? get flashRate;

  @BuiltValueField(wireName: r'muCape')
  num? get muCape;

  @BuiltValueField(wireName: r'mlCape')
  num? get mlCape;

  @BuiltValueField(wireName: r'ebShearKt')
  num? get ebShearKt;

  @BuiltValueField(wireName: r'srh01km')
  num? get srh01km;

  @BuiltValueField(wireName: r'motion')
  ProbSeverePayloadMotion? get motion;

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'automated')
  bool get automated;

  @BuiltValueField(wireName: r'notAWarning')
  bool get notAWarning;

  ProbSeverePayload._();

  factory ProbSeverePayload([void updates(ProbSeverePayloadBuilder b)]) =
      _$ProbSeverePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProbSeverePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProbSeverePayload> get serializer =>
      _$ProbSeverePayloadSerializer();
}

class _$ProbSeverePayloadSerializer
    implements PrimitiveSerializer<ProbSeverePayload> {
  @override
  final Iterable<Type> types = const [ProbSeverePayload, _$ProbSeverePayload];

  @override
  final String wireName = r'ProbSeverePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProbSeverePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'probSevere';
    yield serializers.serialize(
      object.probSevere,
      specifiedType: const FullType(int),
    );
    yield r'probTor';
    yield serializers.serialize(
      object.probTor,
      specifiedType: const FullType(int),
    );
    yield r'probHail';
    yield serializers.serialize(
      object.probHail,
      specifiedType: const FullType(int),
    );
    yield r'probWind';
    yield serializers.serialize(
      object.probWind,
      specifiedType: const FullType(int),
    );
    if (object.meshIn != null) {
      yield r'meshIn';
      yield serializers.serialize(
        object.meshIn,
        specifiedType: const FullType(num),
      );
    }
    if (object.compRefDbz != null) {
      yield r'compRefDbz';
      yield serializers.serialize(
        object.compRefDbz,
        specifiedType: const FullType(num),
      );
    }
    if (object.vil != null) {
      yield r'vil';
      yield serializers.serialize(
        object.vil,
        specifiedType: const FullType(num),
      );
    }
    if (object.echoTop50Kft != null) {
      yield r'echoTop50Kft';
      yield serializers.serialize(
        object.echoTop50Kft,
        specifiedType: const FullType(num),
      );
    }
    if (object.flashRate != null) {
      yield r'flashRate';
      yield serializers.serialize(
        object.flashRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.muCape != null) {
      yield r'muCape';
      yield serializers.serialize(
        object.muCape,
        specifiedType: const FullType(num),
      );
    }
    if (object.mlCape != null) {
      yield r'mlCape';
      yield serializers.serialize(
        object.mlCape,
        specifiedType: const FullType(num),
      );
    }
    if (object.ebShearKt != null) {
      yield r'ebShearKt';
      yield serializers.serialize(
        object.ebShearKt,
        specifiedType: const FullType(num),
      );
    }
    if (object.srh01km != null) {
      yield r'srh01km';
      yield serializers.serialize(
        object.srh01km,
        specifiedType: const FullType(num),
      );
    }
    if (object.motion != null) {
      yield r'motion';
      yield serializers.serialize(
        object.motion,
        specifiedType: const FullType(ProbSeverePayloadMotion),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'automated';
    yield serializers.serialize(
      object.automated,
      specifiedType: const FullType(bool),
    );
    yield r'notAWarning';
    yield serializers.serialize(
      object.notAWarning,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProbSeverePayload object, {
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
    required ProbSeverePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'probSevere':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.probSevere = valueDes;
          break;
        case r'probTor':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.probTor = valueDes;
          break;
        case r'probHail':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.probHail = valueDes;
          break;
        case r'probWind':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.probWind = valueDes;
          break;
        case r'meshIn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.meshIn = valueDes;
          break;
        case r'compRefDbz':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.compRefDbz = valueDes;
          break;
        case r'vil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.vil = valueDes;
          break;
        case r'echoTop50Kft':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.echoTop50Kft = valueDes;
          break;
        case r'flashRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.flashRate = valueDes;
          break;
        case r'muCape':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.muCape = valueDes;
          break;
        case r'mlCape':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.mlCape = valueDes;
          break;
        case r'ebShearKt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.ebShearKt = valueDes;
          break;
        case r'srh01km':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.srh01km = valueDes;
          break;
        case r'motion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProbSeverePayloadMotion,
                    ),
                  )
                  as ProbSeverePayloadMotion?;
          if (valueDes == null) continue;
          result.motion.replace(valueDes);
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.notAWarning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProbSeverePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProbSeverePayloadBuilder();
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
