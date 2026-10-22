//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_manifest_build.g.dart';

/// Foresignal build
///
/// Properties:
/// * [version]
/// * [gitCommit]
@BuiltValue()
abstract class AnalysisManifestBuild
    implements Built<AnalysisManifestBuild, AnalysisManifestBuildBuilder> {
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'gitCommit')
  String? get gitCommit;

  AnalysisManifestBuild._();

  factory AnalysisManifestBuild(
      [void updates(AnalysisManifestBuildBuilder b)]) = _$AnalysisManifestBuild;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisManifestBuildBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisManifestBuild> get serializer =>
      _$AnalysisManifestBuildSerializer();
}

class _$AnalysisManifestBuildSerializer
    implements PrimitiveSerializer<AnalysisManifestBuild> {
  @override
  final Iterable<Type> types = const [
    AnalysisManifestBuild,
    _$AnalysisManifestBuild
  ];

  @override
  final String wireName = r'AnalysisManifestBuild';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisManifestBuild object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.gitCommit != null) {
      yield r'gitCommit';
      yield serializers.serialize(
        object.gitCommit,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisManifestBuild object, {
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
    required AnalysisManifestBuildBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'gitCommit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gitCommit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisManifestBuild deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisManifestBuildBuilder();
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
