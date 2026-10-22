//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mesh_channel_common_config_airtime_custom.g.dart';

/// Radio settings when `airtimePreset=custom` (required then; the default preset of `meshcore`)
///
/// Properties:
/// * [spreadingFactor]
/// * [bandwidthKhz]
/// * [codingRate] - Denominator of 4/x
/// * [preambleSymbols]
@BuiltValue()
abstract class MeshChannelCommonConfigAirtimeCustom
    implements
        Built<
          MeshChannelCommonConfigAirtimeCustom,
          MeshChannelCommonConfigAirtimeCustomBuilder
        > {
  @BuiltValueField(wireName: r'spreadingFactor')
  int? get spreadingFactor;

  @BuiltValueField(wireName: r'bandwidthKhz')
  num? get bandwidthKhz;

  /// Denominator of 4/x
  @BuiltValueField(wireName: r'codingRate')
  int? get codingRate;

  @BuiltValueField(wireName: r'preambleSymbols')
  int? get preambleSymbols;

  MeshChannelCommonConfigAirtimeCustom._();

  factory MeshChannelCommonConfigAirtimeCustom([
    void updates(MeshChannelCommonConfigAirtimeCustomBuilder b),
  ]) = _$MeshChannelCommonConfigAirtimeCustom;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeshChannelCommonConfigAirtimeCustomBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeshChannelCommonConfigAirtimeCustom> get serializer =>
      _$MeshChannelCommonConfigAirtimeCustomSerializer();
}

class _$MeshChannelCommonConfigAirtimeCustomSerializer
    implements PrimitiveSerializer<MeshChannelCommonConfigAirtimeCustom> {
  @override
  final Iterable<Type> types = const [
    MeshChannelCommonConfigAirtimeCustom,
    _$MeshChannelCommonConfigAirtimeCustom,
  ];

  @override
  final String wireName = r'MeshChannelCommonConfigAirtimeCustom';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeshChannelCommonConfigAirtimeCustom object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.spreadingFactor != null) {
      yield r'spreadingFactor';
      yield serializers.serialize(
        object.spreadingFactor,
        specifiedType: const FullType(int),
      );
    }
    if (object.bandwidthKhz != null) {
      yield r'bandwidthKhz';
      yield serializers.serialize(
        object.bandwidthKhz,
        specifiedType: const FullType(num),
      );
    }
    if (object.codingRate != null) {
      yield r'codingRate';
      yield serializers.serialize(
        object.codingRate,
        specifiedType: const FullType(int),
      );
    }
    if (object.preambleSymbols != null) {
      yield r'preambleSymbols';
      yield serializers.serialize(
        object.preambleSymbols,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MeshChannelCommonConfigAirtimeCustom object, {
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
    required MeshChannelCommonConfigAirtimeCustomBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'spreadingFactor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.spreadingFactor = valueDes;
          break;
        case r'bandwidthKhz':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bandwidthKhz = valueDes;
          break;
        case r'codingRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.codingRate = valueDes;
          break;
        case r'preambleSymbols':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.preambleSymbols = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeshChannelCommonConfigAirtimeCustom deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeshChannelCommonConfigAirtimeCustomBuilder();
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
