//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_period_hazards_entered_inner.g.dart';

/// Hazard that entered the radius
///
/// Properties:
/// * [kind]
/// * [title]
/// * [at]
/// * [ref]
@BuiltValue()
abstract class PlaceWeatherDigestPeriodHazardsEnteredInner
    implements
        Built<PlaceWeatherDigestPeriodHazardsEnteredInner,
            PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder> {
  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'ref')
  String? get ref;

  PlaceWeatherDigestPeriodHazardsEnteredInner._();

  factory PlaceWeatherDigestPeriodHazardsEnteredInner(
          [void updates(
              PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder b)]) =
      _$PlaceWeatherDigestPeriodHazardsEnteredInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestPeriodHazardsEnteredInner>
      get serializer =>
          _$PlaceWeatherDigestPeriodHazardsEnteredInnerSerializer();
}

class _$PlaceWeatherDigestPeriodHazardsEnteredInnerSerializer
    implements
        PrimitiveSerializer<PlaceWeatherDigestPeriodHazardsEnteredInner> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestPeriodHazardsEnteredInner,
    _$PlaceWeatherDigestPeriodHazardsEnteredInner
  ];

  @override
  final String wireName = r'PlaceWeatherDigestPeriodHazardsEnteredInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestPeriodHazardsEnteredInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestPeriodHazardsEnteredInner object, {
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
    required PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestPeriodHazardsEnteredInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder();
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
