//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_forecaster_registration.g.dart';

/// Pre-registers, names and configures a first-class external forecaster (155), independent of the auto-derived edp:{sourceId}/{streamId} id.
///
/// Properties:
/// * [id] - Forecaster id, conventionally edp:{sourceId}/{streamId}.
/// * [name] - Optional display name (defaults to the id).
/// * [config] - Optional configuration; `sourceId` and `streamId` pin the provider for backtests, and `externalMinResolved` (integer) overrides the ensemble's global minimum resolved count.
@BuiltValue()
abstract class ExternalForecasterRegistration
    implements
        Built<
          ExternalForecasterRegistration,
          ExternalForecasterRegistrationBuilder
        > {
  /// Forecaster id, conventionally edp:{sourceId}/{streamId}.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Optional display name (defaults to the id).
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Optional configuration; `sourceId` and `streamId` pin the provider for backtests, and `externalMinResolved` (integer) overrides the ensemble's global minimum resolved count.
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  ExternalForecasterRegistration._();

  factory ExternalForecasterRegistration([
    void updates(ExternalForecasterRegistrationBuilder b),
  ]) = _$ExternalForecasterRegistration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalForecasterRegistrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalForecasterRegistration> get serializer =>
      _$ExternalForecasterRegistrationSerializer();
}

class _$ExternalForecasterRegistrationSerializer
    implements PrimitiveSerializer<ExternalForecasterRegistration> {
  @override
  final Iterable<Type> types = const [
    ExternalForecasterRegistration,
    _$ExternalForecasterRegistration,
  ];

  @override
  final String wireName = r'ExternalForecasterRegistration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalForecasterRegistration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalForecasterRegistration object, {
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
    required ExternalForecasterRegistrationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalForecasterRegistration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalForecasterRegistrationBuilder();
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
