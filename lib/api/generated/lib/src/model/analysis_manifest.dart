//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analysis_manifest_inputs.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analysis_manifest_model.dart';
import 'package:foresignal_api/src/model/analysis_manifest_build.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_manifest.g.dart';

/// The machinery and inputs that produced an analytic output; identical manifests are stored once (116)
///
/// Properties:
/// * [id] - ULID identifier
/// * [component]
/// * [componentVersion]
/// * [build_]
/// * [config]
/// * [configHash]
/// * [registries] - Registry file name → sha256, e.g. signal-families.json, originators.json
/// * [asOfSeq]
/// * [inputs]
/// * [model]
/// * [contentHash]
/// * [createdAt]
@BuiltValue()
abstract class AnalysisManifest
    implements Built<AnalysisManifest, AnalysisManifestBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'component')
  String get component;

  @BuiltValueField(wireName: r'componentVersion')
  String get componentVersion;

  @BuiltValueField(wireName: r'build')
  AnalysisManifestBuild get build_;

  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?> get config;

  @BuiltValueField(wireName: r'configHash')
  String get configHash;

  /// Registry file name → sha256, e.g. signal-families.json, originators.json
  @BuiltValueField(wireName: r'registries')
  BuiltMap<String, String> get registries;

  @BuiltValueField(wireName: r'asOfSeq')
  int? get asOfSeq;

  @BuiltValueField(wireName: r'inputs')
  AnalysisManifestInputs get inputs;

  @BuiltValueField(wireName: r'model')
  AnalysisManifestModel? get model;

  @BuiltValueField(wireName: r'contentHash')
  String get contentHash;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  AnalysisManifest._();

  factory AnalysisManifest([void updates(AnalysisManifestBuilder b)]) =
      _$AnalysisManifest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisManifestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisManifest> get serializer =>
      _$AnalysisManifestSerializer();
}

class _$AnalysisManifestSerializer
    implements PrimitiveSerializer<AnalysisManifest> {
  @override
  final Iterable<Type> types = const [AnalysisManifest, _$AnalysisManifest];

  @override
  final String wireName = r'AnalysisManifest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisManifest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'component';
    yield serializers.serialize(
      object.component,
      specifiedType: const FullType(String),
    );
    yield r'componentVersion';
    yield serializers.serialize(
      object.componentVersion,
      specifiedType: const FullType(String),
    );
    yield r'build';
    yield serializers.serialize(
      object.build_,
      specifiedType: const FullType(AnalysisManifestBuild),
    );
    yield r'config';
    yield serializers.serialize(
      object.config,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    yield r'configHash';
    yield serializers.serialize(
      object.configHash,
      specifiedType: const FullType(String),
    );
    yield r'registries';
    yield serializers.serialize(
      object.registries,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    if (object.asOfSeq != null) {
      yield r'asOfSeq';
      yield serializers.serialize(
        object.asOfSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'inputs';
    yield serializers.serialize(
      object.inputs,
      specifiedType: const FullType(AnalysisManifestInputs),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(AnalysisManifestModel),
      );
    }
    yield r'contentHash';
    yield serializers.serialize(
      object.contentHash,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisManifest object, {
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
    required AnalysisManifestBuilder result,
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
        case r'component':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.component = valueDes;
          break;
        case r'componentVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.componentVersion = valueDes;
          break;
        case r'build':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisManifestBuild),
          ) as AnalysisManifestBuild;
          result.build_.replace(valueDes);
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.config.replace(valueDes);
          break;
        case r'configHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configHash = valueDes;
          break;
        case r'registries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.registries.replace(valueDes);
          break;
        case r'asOfSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.asOfSeq = valueDes;
          break;
        case r'inputs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisManifestInputs),
          ) as AnalysisManifestInputs;
          result.inputs.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnalysisManifestModel),
          ) as AnalysisManifestModel?;
          if (valueDes == null) continue;
          result.model.replace(valueDes);
          break;
        case r'contentHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentHash = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisManifest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisManifestBuilder();
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
