//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_analysis_request.g.dart';

/// Optional on-demand analysis-request endpoint (155): Foresignal posts {questionId, horizon, correlationId, callbackUrl} (asOf for a backtest) and the provider answers synchronously in the response and/or asynchronously to the callback. Enables on-demand forecasts and backtesting of a first-class external forecaster such as TimesFM.
///
/// Properties:
/// * [url]
/// * [auth]
/// * [header]
@BuiltValue()
abstract class EdpAnalysisRequest
    implements Built<EdpAnalysisRequest, EdpAnalysisRequestBuilder> {
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'auth')
  EdpAnalysisRequestAuthEnum? get auth;
  // enum authEnum {  none,  bearer,  header,  basic,  };

  @BuiltValueField(wireName: r'header')
  String? get header;

  EdpAnalysisRequest._();

  factory EdpAnalysisRequest([void updates(EdpAnalysisRequestBuilder b)]) =
      _$EdpAnalysisRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpAnalysisRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpAnalysisRequest> get serializer =>
      _$EdpAnalysisRequestSerializer();
}

class _$EdpAnalysisRequestSerializer
    implements PrimitiveSerializer<EdpAnalysisRequest> {
  @override
  final Iterable<Type> types = const [EdpAnalysisRequest, _$EdpAnalysisRequest];

  @override
  final String wireName = r'EdpAnalysisRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpAnalysisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(EdpAnalysisRequestAuthEnum),
      );
    }
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpAnalysisRequest object, {
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
    required EdpAnalysisRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpAnalysisRequestAuthEnum),
          ) as EdpAnalysisRequestAuthEnum?;
          if (valueDes == null) continue;
          result.auth = valueDes;
          break;
        case r'header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.header = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpAnalysisRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpAnalysisRequestBuilder();
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

class EdpAnalysisRequestAuthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const EdpAnalysisRequestAuthEnum none =
      _$edpAnalysisRequestAuthEnum_none;
  @BuiltValueEnumConst(wireName: r'bearer')
  static const EdpAnalysisRequestAuthEnum bearer =
      _$edpAnalysisRequestAuthEnum_bearer;
  @BuiltValueEnumConst(wireName: r'header')
  static const EdpAnalysisRequestAuthEnum header =
      _$edpAnalysisRequestAuthEnum_header;
  @BuiltValueEnumConst(wireName: r'basic')
  static const EdpAnalysisRequestAuthEnum basic =
      _$edpAnalysisRequestAuthEnum_basic;

  static Serializer<EdpAnalysisRequestAuthEnum> get serializer =>
      _$edpAnalysisRequestAuthEnumSerializer;

  const EdpAnalysisRequestAuthEnum._(String name) : super(name);

  static BuiltSet<EdpAnalysisRequestAuthEnum> get values =>
      _$edpAnalysisRequestAuthEnumValues;
  static EdpAnalysisRequestAuthEnum valueOf(String name) =>
      _$edpAnalysisRequestAuthEnumValueOf(name);
}
