//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_manifest_cycle.g.dart';

/// Model cycle
///
/// Properties:
/// * [date]
/// * [hour]
/// * [forecastHour]
/// * [runIso]
/// * [validIso]
@BuiltValue()
abstract class FieldManifestCycle
    implements Built<FieldManifestCycle, FieldManifestCycleBuilder> {
  @BuiltValueField(wireName: r'date')
  String get date;

  @BuiltValueField(wireName: r'hour')
  int get hour;

  @BuiltValueField(wireName: r'forecastHour')
  int get forecastHour;

  @BuiltValueField(wireName: r'runIso')
  DateTime get runIso;

  @BuiltValueField(wireName: r'validIso')
  DateTime get validIso;

  FieldManifestCycle._();

  factory FieldManifestCycle([void updates(FieldManifestCycleBuilder b)]) =
      _$FieldManifestCycle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldManifestCycleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldManifestCycle> get serializer =>
      _$FieldManifestCycleSerializer();
}

class _$FieldManifestCycleSerializer
    implements PrimitiveSerializer<FieldManifestCycle> {
  @override
  final Iterable<Type> types = const [FieldManifestCycle, _$FieldManifestCycle];

  @override
  final String wireName = r'FieldManifestCycle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldManifestCycle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'hour';
    yield serializers.serialize(
      object.hour,
      specifiedType: const FullType(int),
    );
    yield r'forecastHour';
    yield serializers.serialize(
      object.forecastHour,
      specifiedType: const FullType(int),
    );
    yield r'runIso';
    yield serializers.serialize(
      object.runIso,
      specifiedType: const FullType(DateTime),
    );
    yield r'validIso';
    yield serializers.serialize(
      object.validIso,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldManifestCycle object, {
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
    required FieldManifestCycleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'hour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.hour = valueDes;
          break;
        case r'forecastHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.forecastHour = valueDes;
          break;
        case r'runIso':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.runIso = valueDes;
          break;
        case r'validIso':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.validIso = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldManifestCycle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldManifestCycleBuilder();
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
