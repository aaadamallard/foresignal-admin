//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_manifest_inputs.g.dart';

/// Explicit refs (≤ 10,000) or the query definition plus a hash of the ordered refs
///
/// Properties:
/// * [refs]
/// * [query]
/// * [count]
/// * [hash]
@BuiltValue()
abstract class AnalysisManifestInputs
    implements Built<AnalysisManifestInputs, AnalysisManifestInputsBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String>? get refs;

  @BuiltValueField(wireName: r'query')
  BuiltMap<String, JsonObject?>? get query;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'hash')
  String get hash;

  AnalysisManifestInputs._();

  factory AnalysisManifestInputs(
          [void updates(AnalysisManifestInputsBuilder b)]) =
      _$AnalysisManifestInputs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisManifestInputsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisManifestInputs> get serializer =>
      _$AnalysisManifestInputsSerializer();
}

class _$AnalysisManifestInputsSerializer
    implements PrimitiveSerializer<AnalysisManifestInputs> {
  @override
  final Iterable<Type> types = const [
    AnalysisManifestInputs,
    _$AnalysisManifestInputs
  ];

  @override
  final String wireName = r'AnalysisManifestInputs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisManifestInputs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refs != null) {
      yield r'refs';
      yield serializers.serialize(
        object.refs,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.query != null) {
      yield r'query';
      yield serializers.serialize(
        object.query,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisManifestInputs object, {
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
    required AnalysisManifestInputsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.refs.replace(valueDes);
          break;
        case r'query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.query.replace(valueDes);
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisManifestInputs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisManifestInputsBuilder();
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
