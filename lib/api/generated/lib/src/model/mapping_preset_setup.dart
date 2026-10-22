//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_preset_setup.g.dart';

/// Device-side setup for a preset: instructions and the exact ingest URL (059). On a preset's catalogue entry `url` is a template; on creation it is concrete and contains the key once.
///
/// Properties:
/// * [instructions] - Markdown setup steps for the device
/// * [urlTemplate]
/// * [url] - Concrete URL (creation response only; shown once)
@BuiltValue()
abstract class MappingPresetSetup
    implements Built<MappingPresetSetup, MappingPresetSetupBuilder> {
  /// Markdown setup steps for the device
  @BuiltValueField(wireName: r'instructions')
  String get instructions;

  @BuiltValueField(wireName: r'urlTemplate')
  String get urlTemplate;

  /// Concrete URL (creation response only; shown once)
  @BuiltValueField(wireName: r'url')
  String? get url;

  MappingPresetSetup._();

  factory MappingPresetSetup([void updates(MappingPresetSetupBuilder b)]) =
      _$MappingPresetSetup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingPresetSetupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingPresetSetup> get serializer =>
      _$MappingPresetSetupSerializer();
}

class _$MappingPresetSetupSerializer
    implements PrimitiveSerializer<MappingPresetSetup> {
  @override
  final Iterable<Type> types = const [MappingPresetSetup, _$MappingPresetSetup];

  @override
  final String wireName = r'MappingPresetSetup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingPresetSetup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instructions';
    yield serializers.serialize(
      object.instructions,
      specifiedType: const FullType(String),
    );
    yield r'urlTemplate';
    yield serializers.serialize(
      object.urlTemplate,
      specifiedType: const FullType(String),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingPresetSetup object, {
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
    required MappingPresetSetupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.instructions = valueDes;
          break;
        case r'urlTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.urlTemplate = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingPresetSetup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingPresetSetupBuilder();
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
