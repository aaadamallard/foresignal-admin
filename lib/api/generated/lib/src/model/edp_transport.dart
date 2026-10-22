//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_search.dart';
import 'package:foresignal_api/src/model/edp_pull.dart';
import 'package:foresignal_api/src/model/edp_analysis_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_transport.g.dart';

/// How items reach Foresignal: at least one of push: true or a pull endpoint
///
/// Properties:
/// * [push] - The provider pushes to POST /v1/external/sources/{id}/items
/// * [pull]
/// * [search]
/// * [analysisRequest]
@BuiltValue()
abstract class EdpTransport
    implements Built<EdpTransport, EdpTransportBuilder> {
  /// The provider pushes to POST /v1/external/sources/{id}/items
  @BuiltValueField(wireName: r'push')
  bool? get push;

  @BuiltValueField(wireName: r'pull')
  EdpPull? get pull;

  @BuiltValueField(wireName: r'search')
  EdpSearch? get search;

  @BuiltValueField(wireName: r'analysisRequest')
  EdpAnalysisRequest? get analysisRequest;

  EdpTransport._();

  factory EdpTransport([void updates(EdpTransportBuilder b)]) = _$EdpTransport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpTransportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpTransport> get serializer => _$EdpTransportSerializer();
}

class _$EdpTransportSerializer implements PrimitiveSerializer<EdpTransport> {
  @override
  final Iterable<Type> types = const [EdpTransport, _$EdpTransport];

  @override
  final String wireName = r'EdpTransport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpTransport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.push != null) {
      yield r'push';
      yield serializers.serialize(
        object.push,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pull != null) {
      yield r'pull';
      yield serializers.serialize(
        object.pull,
        specifiedType: const FullType.nullable(EdpPull),
      );
    }
    if (object.search != null) {
      yield r'search';
      yield serializers.serialize(
        object.search,
        specifiedType: const FullType.nullable(EdpSearch),
      );
    }
    if (object.analysisRequest != null) {
      yield r'analysisRequest';
      yield serializers.serialize(
        object.analysisRequest,
        specifiedType: const FullType.nullable(EdpAnalysisRequest),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpTransport object, {
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
    required EdpTransportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'push':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.push = valueDes;
          break;
        case r'pull':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpPull),
          ) as EdpPull?;
          if (valueDes == null) continue;
          result.pull.replace(valueDes);
          break;
        case r'search':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpSearch),
          ) as EdpSearch?;
          if (valueDes == null) continue;
          result.search.replace(valueDes);
          break;
        case r'analysisRequest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpAnalysisRequest),
          ) as EdpAnalysisRequest?;
          if (valueDes == null) continue;
          result.analysisRequest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpTransport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpTransportBuilder();
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
