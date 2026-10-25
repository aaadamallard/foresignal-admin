//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'index_weights_input.g.dart';

/// Apply fitted, operator or default weights (logged)
///
/// Properties:
/// * [source_]
/// * [version] - Fitted weights version (required for `fitted`)
/// * [weights] - Required for `operator`
/// * [rationale]
@BuiltValue()
abstract class IndexWeightsInput
    implements Built<IndexWeightsInput, IndexWeightsInputBuilder> {
  @BuiltValueField(wireName: r'source')
  IndexWeightsInputSource_Enum get source_;
  // enum source_Enum {  fitted,  operator,  default,  };

  /// Fitted weights version (required for `fitted`)
  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Required for `operator`
  @BuiltValueField(wireName: r'weights')
  BuiltMap<String, num>? get weights;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  IndexWeightsInput._();

  factory IndexWeightsInput([void updates(IndexWeightsInputBuilder b)]) =
      _$IndexWeightsInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexWeightsInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexWeightsInput> get serializer =>
      _$IndexWeightsInputSerializer();
}

class _$IndexWeightsInputSerializer
    implements PrimitiveSerializer<IndexWeightsInput> {
  @override
  final Iterable<Type> types = const [IndexWeightsInput, _$IndexWeightsInput];

  @override
  final String wireName = r'IndexWeightsInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexWeightsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(IndexWeightsInputSource_Enum),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.weights != null) {
      yield r'weights';
      yield serializers.serialize(
        object.weights,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(num),
        ]),
      );
    }
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexWeightsInput object, {
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
    required IndexWeightsInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IndexWeightsInputSource_Enum),
                  )
                  as IndexWeightsInputSource_Enum;
          result.source_ = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'weights':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.weights.replace(valueDes);
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexWeightsInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexWeightsInputBuilder();
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

class IndexWeightsInputSource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'fitted')
  static const IndexWeightsInputSource_Enum fitted =
      _$indexWeightsInputSourceEnum_fitted;
  @BuiltValueEnumConst(wireName: r'operator')
  static const IndexWeightsInputSource_Enum operator_ =
      _$indexWeightsInputSourceEnum_operator_;
  @BuiltValueEnumConst(wireName: r'default')
  static const IndexWeightsInputSource_Enum default_ =
      _$indexWeightsInputSourceEnum_default_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IndexWeightsInputSource_Enum unknownDefaultOpenApi =
      _$indexWeightsInputSourceEnum_unknownDefaultOpenApi;

  static Serializer<IndexWeightsInputSource_Enum> get serializer =>
      _$indexWeightsInputSourceEnumSerializer;

  const IndexWeightsInputSource_Enum._(String name) : super(name);

  static BuiltSet<IndexWeightsInputSource_Enum> get values =>
      _$indexWeightsInputSourceEnumValues;
  static IndexWeightsInputSource_Enum valueOf(String name) =>
      _$indexWeightsInputSourceEnumValueOf(name);
}
