//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_track_payload_nowcast_inner.g.dart';

/// Nowcast polygon (geometry carried in the record GeometryCollection)
///
/// Properties:
/// * [leadMinutes]
/// * [method]
@BuiltValue()
abstract class StormTrackPayloadNowcastInner
    implements
        Built<
          StormTrackPayloadNowcastInner,
          StormTrackPayloadNowcastInnerBuilder
        > {
  @BuiltValueField(wireName: r'leadMinutes')
  StormTrackPayloadNowcastInnerLeadMinutesEnum get leadMinutes;
  // enum leadMinutesEnum {  15,  30,  60,  };

  @BuiltValueField(wireName: r'method')
  StormTrackPayloadNowcastInnerMethodEnum get method;
  // enum methodEnum {  linear-advection,  };

  StormTrackPayloadNowcastInner._();

  factory StormTrackPayloadNowcastInner([
    void updates(StormTrackPayloadNowcastInnerBuilder b),
  ]) = _$StormTrackPayloadNowcastInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormTrackPayloadNowcastInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormTrackPayloadNowcastInner> get serializer =>
      _$StormTrackPayloadNowcastInnerSerializer();
}

class _$StormTrackPayloadNowcastInnerSerializer
    implements PrimitiveSerializer<StormTrackPayloadNowcastInner> {
  @override
  final Iterable<Type> types = const [
    StormTrackPayloadNowcastInner,
    _$StormTrackPayloadNowcastInner,
  ];

  @override
  final String wireName = r'StormTrackPayloadNowcastInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormTrackPayloadNowcastInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'leadMinutes';
    yield serializers.serialize(
      object.leadMinutes,
      specifiedType: const FullType(
        StormTrackPayloadNowcastInnerLeadMinutesEnum,
      ),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(StormTrackPayloadNowcastInnerMethodEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadNowcastInner object, {
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
    required StormTrackPayloadNowcastInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'leadMinutes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      StormTrackPayloadNowcastInnerLeadMinutesEnum,
                    ),
                  )
                  as StormTrackPayloadNowcastInnerLeadMinutesEnum;
          result.leadMinutes = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      StormTrackPayloadNowcastInnerMethodEnum,
                    ),
                  )
                  as StormTrackPayloadNowcastInnerMethodEnum;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormTrackPayloadNowcastInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormTrackPayloadNowcastInnerBuilder();
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

class StormTrackPayloadNowcastInnerLeadMinutesEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 15)
  static const StormTrackPayloadNowcastInnerLeadMinutesEnum number15 =
      _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number15;
  @BuiltValueEnumConst(wireNumber: 30)
  static const StormTrackPayloadNowcastInnerLeadMinutesEnum number30 =
      _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number30;
  @BuiltValueEnumConst(wireNumber: 60)
  static const StormTrackPayloadNowcastInnerLeadMinutesEnum number60 =
      _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number60;

  static Serializer<StormTrackPayloadNowcastInnerLeadMinutesEnum>
  get serializer => _$stormTrackPayloadNowcastInnerLeadMinutesEnumSerializer;

  const StormTrackPayloadNowcastInnerLeadMinutesEnum._(String name)
    : super(name);

  static BuiltSet<StormTrackPayloadNowcastInnerLeadMinutesEnum> get values =>
      _$stormTrackPayloadNowcastInnerLeadMinutesEnumValues;
  static StormTrackPayloadNowcastInnerLeadMinutesEnum valueOf(String name) =>
      _$stormTrackPayloadNowcastInnerLeadMinutesEnumValueOf(name);
}

class StormTrackPayloadNowcastInnerMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'linear-advection')
  static const StormTrackPayloadNowcastInnerMethodEnum linearAdvection =
      _$stormTrackPayloadNowcastInnerMethodEnum_linearAdvection;

  static Serializer<StormTrackPayloadNowcastInnerMethodEnum> get serializer =>
      _$stormTrackPayloadNowcastInnerMethodEnumSerializer;

  const StormTrackPayloadNowcastInnerMethodEnum._(String name) : super(name);

  static BuiltSet<StormTrackPayloadNowcastInnerMethodEnum> get values =>
      _$stormTrackPayloadNowcastInnerMethodEnumValues;
  static StormTrackPayloadNowcastInnerMethodEnum valueOf(String name) =>
      _$stormTrackPayloadNowcastInnerMethodEnumValueOf(name);
}
