//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecaster_update.g.dart';

/// Replace a forecaster's settings
///
/// Properties:
/// * [active]
/// * [config] - Replaces the forecaster's configuration. For an external forecaster, `externalMinResolved` (integer) overrides the ensemble's global minimum resolved count before the forecaster is weighted (155).
/// * [name] - Optional display name; set for a first-class external forecaster (155).
@BuiltValue()
abstract class ForecasterUpdate
    implements Built<ForecasterUpdate, ForecasterUpdateBuilder> {
  @BuiltValueField(wireName: r'active')
  bool get active;

  /// Replaces the forecaster's configuration. For an external forecaster, `externalMinResolved` (integer) overrides the ensemble's global minimum resolved count before the forecaster is weighted (155).
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  /// Optional display name; set for a first-class external forecaster (155).
  @BuiltValueField(wireName: r'name')
  String? get name;

  ForecasterUpdate._();

  factory ForecasterUpdate([void updates(ForecasterUpdateBuilder b)]) =
      _$ForecasterUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecasterUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecasterUpdate> get serializer =>
      _$ForecasterUpdateSerializer();
}

class _$ForecasterUpdateSerializer
    implements PrimitiveSerializer<ForecasterUpdate> {
  @override
  final Iterable<Type> types = const [ForecasterUpdate, _$ForecasterUpdate];

  @override
  final String wireName = r'ForecasterUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecasterUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecasterUpdate object, {
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
    required ForecasterUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.active = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecasterUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecasterUpdateBuilder();
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
