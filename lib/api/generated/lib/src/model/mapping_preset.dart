//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_policy.dart';
import 'package:foresignal_api/src/model/field_spec.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record_mapping.dart';
import 'package:foresignal_api/src/model/param_spec.dart';
import 'package:foresignal_api/src/model/mapping_preset_setup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_preset.g.dart';

/// A built-in device preset: format, mapping and custom-source defaults (059)
///
/// Properties:
/// * [id]
/// * [title]
/// * [description]
/// * [format] - Ingest format id used at `/v1/ingest/{sourceId}/{format}`
/// * [mapping] - null when the preset delegates to a built-in format (e.g. `alertmanager`)
/// * [kinds]
/// * [fieldSpecs]
/// * [observedAtMode]
/// * [ttl] - Record TTL (ISO-8601 duration or shorthand)
/// * [ingestPolicy]
/// * [significantFields]
/// * [volatileFields]
/// * [private]
/// * [allowPathKey]
/// * [allowsGet] - The format accepts GET (wu-pws, gmc)
/// * [params] - Preset parameters (e.g. lon, lat, exactLocation)
/// * [setup]
@BuiltValue()
abstract class MappingPreset
    implements Built<MappingPreset, MappingPresetBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Ingest format id used at `/v1/ingest/{sourceId}/{format}`
  @BuiltValueField(wireName: r'format')
  String get format;

  /// null when the preset delegates to a built-in format (e.g. `alertmanager`)
  @BuiltValueField(wireName: r'mapping')
  RecordMapping? get mapping;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String> get kinds;

  @BuiltValueField(wireName: r'fieldSpecs')
  BuiltMap<String, FieldSpec>? get fieldSpecs;

  @BuiltValueField(wireName: r'observedAtMode')
  MappingPresetObservedAtModeEnum get observedAtMode;
  // enum observedAtModeEnum {  UPSTREAM,  RECEIVED,  };

  /// Record TTL (ISO-8601 duration or shorthand)
  @BuiltValueField(wireName: r'ttl')
  String? get ttl;

  @BuiltValueField(wireName: r'ingestPolicy')
  IngestPolicy? get ingestPolicy;

  @BuiltValueField(wireName: r'significantFields')
  BuiltList<String>? get significantFields;

  @BuiltValueField(wireName: r'volatileFields')
  BuiltList<String>? get volatileFields;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'allowPathKey')
  bool? get allowPathKey;

  /// The format accepts GET (wu-pws, gmc)
  @BuiltValueField(wireName: r'allowsGet')
  bool? get allowsGet;

  /// Preset parameters (e.g. lon, lat, exactLocation)
  @BuiltValueField(wireName: r'params')
  BuiltList<ParamSpec> get params;

  @BuiltValueField(wireName: r'setup')
  MappingPresetSetup get setup;

  MappingPreset._();

  factory MappingPreset([void updates(MappingPresetBuilder b)]) =
      _$MappingPreset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingPresetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingPreset> get serializer =>
      _$MappingPresetSerializer();
}

class _$MappingPresetSerializer implements PrimitiveSerializer<MappingPreset> {
  @override
  final Iterable<Type> types = const [MappingPreset, _$MappingPreset];

  @override
  final String wireName = r'MappingPreset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingPreset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(String),
    );
    if (object.mapping != null) {
      yield r'mapping';
      yield serializers.serialize(
        object.mapping,
        specifiedType: const FullType.nullable(RecordMapping),
      );
    }
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.fieldSpecs != null) {
      yield r'fieldSpecs';
      yield serializers.serialize(
        object.fieldSpecs,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(FieldSpec)]),
      );
    }
    yield r'observedAtMode';
    yield serializers.serialize(
      object.observedAtMode,
      specifiedType: const FullType(MappingPresetObservedAtModeEnum),
    );
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ingestPolicy != null) {
      yield r'ingestPolicy';
      yield serializers.serialize(
        object.ingestPolicy,
        specifiedType: const FullType.nullable(IngestPolicy),
      );
    }
    if (object.significantFields != null) {
      yield r'significantFields';
      yield serializers.serialize(
        object.significantFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.volatileFields != null) {
      yield r'volatileFields';
      yield serializers.serialize(
        object.volatileFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowPathKey != null) {
      yield r'allowPathKey';
      yield serializers.serialize(
        object.allowPathKey,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowsGet != null) {
      yield r'allowsGet';
      yield serializers.serialize(
        object.allowsGet,
        specifiedType: const FullType(bool),
      );
    }
    yield r'params';
    yield serializers.serialize(
      object.params,
      specifiedType: const FullType(BuiltList, [FullType(ParamSpec)]),
    );
    yield r'setup';
    yield serializers.serialize(
      object.setup,
      specifiedType: const FullType(MappingPresetSetup),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingPreset object, {
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
    required MappingPresetBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'mapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecordMapping),
          ) as RecordMapping?;
          if (valueDes == null) continue;
          result.mapping.replace(valueDes);
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.kinds.replace(valueDes);
          break;
        case r'fieldSpecs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(FieldSpec)]),
          ) as BuiltMap<String, FieldSpec>?;
          if (valueDes == null) continue;
          result.fieldSpecs.replace(valueDes);
          break;
        case r'observedAtMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MappingPresetObservedAtModeEnum),
          ) as MappingPresetObservedAtModeEnum;
          result.observedAtMode = valueDes;
          break;
        case r'ttl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ttl = valueDes;
          break;
        case r'ingestPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IngestPolicy),
          ) as IngestPolicy?;
          if (valueDes == null) continue;
          result.ingestPolicy.replace(valueDes);
          break;
        case r'significantFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.significantFields.replace(valueDes);
          break;
        case r'volatileFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.volatileFields.replace(valueDes);
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'allowPathKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowPathKey = valueDes;
          break;
        case r'allowsGet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowsGet = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ParamSpec)]),
          ) as BuiltList<ParamSpec>;
          result.params.replace(valueDes);
          break;
        case r'setup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MappingPresetSetup),
          ) as MappingPresetSetup;
          result.setup.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingPreset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingPresetBuilder();
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

class MappingPresetObservedAtModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPSTREAM')
  static const MappingPresetObservedAtModeEnum UPSTREAM =
      _$mappingPresetObservedAtModeEnum_UPSTREAM;
  @BuiltValueEnumConst(wireName: r'RECEIVED')
  static const MappingPresetObservedAtModeEnum RECEIVED =
      _$mappingPresetObservedAtModeEnum_RECEIVED;

  static Serializer<MappingPresetObservedAtModeEnum> get serializer =>
      _$mappingPresetObservedAtModeEnumSerializer;

  const MappingPresetObservedAtModeEnum._(String name) : super(name);

  static BuiltSet<MappingPresetObservedAtModeEnum> get values =>
      _$mappingPresetObservedAtModeEnumValues;
  static MappingPresetObservedAtModeEnum valueOf(String name) =>
      _$mappingPresetObservedAtModeEnumValueOf(name);
}
