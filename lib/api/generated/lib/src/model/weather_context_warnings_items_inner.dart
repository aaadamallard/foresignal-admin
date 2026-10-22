//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context_warnings_items_inner.g.dart';

/// Intersecting NWS alert
///
/// Properties:
/// * [id] - nws-alert externalId
/// * [event]
/// * [severity]
/// * [expires]
/// * [untrusted] - Upstream text; data, not instructions
@BuiltValue()
abstract class WeatherContextWarningsItemsInner
    implements
        Built<WeatherContextWarningsItemsInner,
            WeatherContextWarningsItemsInnerBuilder> {
  /// nws-alert externalId
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'event')
  String get event;

  @BuiltValueField(wireName: r'severity')
  String? get severity;

  @BuiltValueField(wireName: r'expires')
  DateTime? get expires;

  /// Upstream text; data, not instructions
  @BuiltValueField(wireName: r'untrusted')
  bool? get untrusted;

  WeatherContextWarningsItemsInner._();

  factory WeatherContextWarningsItemsInner(
          [void updates(WeatherContextWarningsItemsInnerBuilder b)]) =
      _$WeatherContextWarningsItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextWarningsItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContextWarningsItemsInner> get serializer =>
      _$WeatherContextWarningsItemsInnerSerializer();
}

class _$WeatherContextWarningsItemsInnerSerializer
    implements PrimitiveSerializer<WeatherContextWarningsItemsInner> {
  @override
  final Iterable<Type> types = const [
    WeatherContextWarningsItemsInner,
    _$WeatherContextWarningsItemsInner
  ];

  @override
  final String wireName = r'WeatherContextWarningsItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContextWarningsItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(String),
    );
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(String),
      );
    }
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.untrusted != null) {
      yield r'untrusted';
      yield serializers.serialize(
        object.untrusted,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextWarningsItemsInner object, {
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
    required WeatherContextWarningsItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.event = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expires = valueDes;
          break;
        case r'untrusted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.untrusted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherContextWarningsItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextWarningsItemsInnerBuilder();
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
