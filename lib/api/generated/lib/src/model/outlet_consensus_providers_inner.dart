//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'outlet_consensus_providers_inner.g.dart';

/// Provider value
///
/// Properties:
/// * [provider]
/// * [valueNorm]
/// * [label]
/// * [ratedAt]
/// * [licence]
@BuiltValue()
abstract class OutletConsensusProvidersInner
    implements
        Built<
          OutletConsensusProvidersInner,
          OutletConsensusProvidersInnerBuilder
        > {
  @BuiltValueField(wireName: r'provider')
  OutletConsensusProvidersInnerProviderEnum get provider;
  // enum providerEnum {  wikidata,  partisan-web,  allsides,  mbfc,  operator,  };

  @BuiltValueField(wireName: r'valueNorm')
  num? get valueNorm;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'ratedAt')
  DateTime? get ratedAt;

  @BuiltValueField(wireName: r'licence')
  String? get licence;

  OutletConsensusProvidersInner._();

  factory OutletConsensusProvidersInner([
    void updates(OutletConsensusProvidersInnerBuilder b),
  ]) = _$OutletConsensusProvidersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutletConsensusProvidersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutletConsensusProvidersInner> get serializer =>
      _$OutletConsensusProvidersInnerSerializer();
}

class _$OutletConsensusProvidersInnerSerializer
    implements PrimitiveSerializer<OutletConsensusProvidersInner> {
  @override
  final Iterable<Type> types = const [
    OutletConsensusProvidersInner,
    _$OutletConsensusProvidersInner,
  ];

  @override
  final String wireName = r'OutletConsensusProvidersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutletConsensusProvidersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(OutletConsensusProvidersInnerProviderEnum),
    );
    if (object.valueNorm != null) {
      yield r'valueNorm';
      yield serializers.serialize(
        object.valueNorm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ratedAt != null) {
      yield r'ratedAt';
      yield serializers.serialize(
        object.ratedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutletConsensusProvidersInner object, {
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
    required OutletConsensusProvidersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      OutletConsensusProvidersInnerProviderEnum,
                    ),
                  )
                  as OutletConsensusProvidersInnerProviderEnum;
          result.provider = valueDes;
          break;
        case r'valueNorm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.valueNorm = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'ratedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.ratedAt = valueDes;
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.licence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutletConsensusProvidersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutletConsensusProvidersInnerBuilder();
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

class OutletConsensusProvidersInnerProviderEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wikidata')
  static const OutletConsensusProvidersInnerProviderEnum wikidata =
      _$outletConsensusProvidersInnerProviderEnum_wikidata;
  @BuiltValueEnumConst(wireName: r'partisan-web')
  static const OutletConsensusProvidersInnerProviderEnum partisanWeb =
      _$outletConsensusProvidersInnerProviderEnum_partisanWeb;
  @BuiltValueEnumConst(wireName: r'allsides')
  static const OutletConsensusProvidersInnerProviderEnum allsides =
      _$outletConsensusProvidersInnerProviderEnum_allsides;
  @BuiltValueEnumConst(wireName: r'mbfc')
  static const OutletConsensusProvidersInnerProviderEnum mbfc =
      _$outletConsensusProvidersInnerProviderEnum_mbfc;
  @BuiltValueEnumConst(wireName: r'operator')
  static const OutletConsensusProvidersInnerProviderEnum operator_ =
      _$outletConsensusProvidersInnerProviderEnum_operator_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OutletConsensusProvidersInnerProviderEnum unknownDefaultOpenApi =
      _$outletConsensusProvidersInnerProviderEnum_unknownDefaultOpenApi;

  static Serializer<OutletConsensusProvidersInnerProviderEnum> get serializer =>
      _$outletConsensusProvidersInnerProviderEnumSerializer;

  const OutletConsensusProvidersInnerProviderEnum._(String name) : super(name);

  static BuiltSet<OutletConsensusProvidersInnerProviderEnum> get values =>
      _$outletConsensusProvidersInnerProviderEnumValues;
  static OutletConsensusProvidersInnerProviderEnum valueOf(String name) =>
      _$outletConsensusProvidersInnerProviderEnumValueOf(name);
}
