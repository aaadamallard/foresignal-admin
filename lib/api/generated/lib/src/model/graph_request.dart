//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'graph_request.g.dart';

/// Subgraph query from seed refs
///
/// Properties:
/// * [refs]
/// * [depth]
/// * [types]
/// * [asOf]
/// * [minConfidence]
/// * [limit]
@BuiltValue()
abstract class GraphRequest
    implements Built<GraphRequest, GraphRequestBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  @BuiltValueField(wireName: r'depth')
  int? get depth;

  @BuiltValueField(wireName: r'types')
  BuiltList<GraphRequestTypesEnum>? get types;
  // enum typesEnum {  member-of,  observed-by,  same-as,  located-in,  near,  depends-on,  affects,  derived-from,  evidence-for,  evidence-against,  about,  mentions,  precedes,  causes,  related-to,  owns,  controls,  officer-of,  beneficial-owner,  affiliated-with,  };

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'minConfidence')
  num? get minConfidence;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  GraphRequest._();

  factory GraphRequest([void updates(GraphRequestBuilder b)]) = _$GraphRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GraphRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GraphRequest> get serializer => _$GraphRequestSerializer();
}

class _$GraphRequestSerializer implements PrimitiveSerializer<GraphRequest> {
  @override
  final Iterable<Type> types = const [GraphRequest, _$GraphRequest];

  @override
  final String wireName = r'GraphRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GraphRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.depth != null) {
      yield r'depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(int),
      );
    }
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [
          FullType(GraphRequestTypesEnum),
        ]),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.minConfidence != null) {
      yield r'minConfidence';
      yield serializers.serialize(
        object.minConfidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GraphRequest object, {
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
    required GraphRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.refs.replace(valueDes);
          break;
        case r'depth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.depth = valueDes;
          break;
        case r'types':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(GraphRequestTypesEnum),
                    ]),
                  )
                  as BuiltList<GraphRequestTypesEnum>?;
          if (valueDes == null) continue;
          result.types.replace(valueDes);
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'minConfidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.minConfidence = valueDes;
          break;
        case r'limit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GraphRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GraphRequestBuilder();
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

/// Client-Contract §4 relation type
class GraphRequestTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member-of')
  static const GraphRequestTypesEnum memberOf =
      _$graphRequestTypesEnum_memberOf;
  @BuiltValueEnumConst(wireName: r'observed-by')
  static const GraphRequestTypesEnum observedBy =
      _$graphRequestTypesEnum_observedBy;
  @BuiltValueEnumConst(wireName: r'same-as')
  static const GraphRequestTypesEnum sameAs = _$graphRequestTypesEnum_sameAs;
  @BuiltValueEnumConst(wireName: r'located-in')
  static const GraphRequestTypesEnum locatedIn =
      _$graphRequestTypesEnum_locatedIn;
  @BuiltValueEnumConst(wireName: r'near')
  static const GraphRequestTypesEnum near = _$graphRequestTypesEnum_near;
  @BuiltValueEnumConst(wireName: r'depends-on')
  static const GraphRequestTypesEnum dependsOn =
      _$graphRequestTypesEnum_dependsOn;
  @BuiltValueEnumConst(wireName: r'affects')
  static const GraphRequestTypesEnum affects = _$graphRequestTypesEnum_affects;
  @BuiltValueEnumConst(wireName: r'derived-from')
  static const GraphRequestTypesEnum derivedFrom =
      _$graphRequestTypesEnum_derivedFrom;
  @BuiltValueEnumConst(wireName: r'evidence-for')
  static const GraphRequestTypesEnum evidenceFor =
      _$graphRequestTypesEnum_evidenceFor;
  @BuiltValueEnumConst(wireName: r'evidence-against')
  static const GraphRequestTypesEnum evidenceAgainst =
      _$graphRequestTypesEnum_evidenceAgainst;
  @BuiltValueEnumConst(wireName: r'about')
  static const GraphRequestTypesEnum about = _$graphRequestTypesEnum_about;
  @BuiltValueEnumConst(wireName: r'mentions')
  static const GraphRequestTypesEnum mentions =
      _$graphRequestTypesEnum_mentions;
  @BuiltValueEnumConst(wireName: r'precedes')
  static const GraphRequestTypesEnum precedes =
      _$graphRequestTypesEnum_precedes;
  @BuiltValueEnumConst(wireName: r'causes')
  static const GraphRequestTypesEnum causes = _$graphRequestTypesEnum_causes;
  @BuiltValueEnumConst(wireName: r'related-to')
  static const GraphRequestTypesEnum relatedTo =
      _$graphRequestTypesEnum_relatedTo;
  @BuiltValueEnumConst(wireName: r'owns')
  static const GraphRequestTypesEnum owns = _$graphRequestTypesEnum_owns;
  @BuiltValueEnumConst(wireName: r'controls')
  static const GraphRequestTypesEnum controls =
      _$graphRequestTypesEnum_controls;
  @BuiltValueEnumConst(wireName: r'officer-of')
  static const GraphRequestTypesEnum officerOf =
      _$graphRequestTypesEnum_officerOf;
  @BuiltValueEnumConst(wireName: r'beneficial-owner')
  static const GraphRequestTypesEnum beneficialOwner =
      _$graphRequestTypesEnum_beneficialOwner;
  @BuiltValueEnumConst(wireName: r'affiliated-with')
  static const GraphRequestTypesEnum affiliatedWith =
      _$graphRequestTypesEnum_affiliatedWith;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GraphRequestTypesEnum unknownDefaultOpenApi =
      _$graphRequestTypesEnum_unknownDefaultOpenApi;

  static Serializer<GraphRequestTypesEnum> get serializer =>
      _$graphRequestTypesEnumSerializer;

  const GraphRequestTypesEnum._(String name) : super(name);

  static BuiltSet<GraphRequestTypesEnum> get values =>
      _$graphRequestTypesEnumValues;
  static GraphRequestTypesEnum valueOf(String name) =>
      _$graphRequestTypesEnumValueOf(name);
}
