//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'licence_terms.g.dart';

/// Structured licence terms resolved for a source or a record version (109)
///
/// Properties:
/// * [id] - SPDX id where one exists (CC-BY-4.0, ODbL-1.0, CC0-1.0, CC-BY-NC-SA-4.0, CC-BY-SA-4.0, CC-BY-NC-4.0, PDDL-1.0, OGL-UK-3.0, NLOD-2.0, DL-DE-BY-2.0), else a slug (us-gov-public-domain, opensky-terms, acled-terms, aisstream-terms, unknown)
/// * [name]
/// * [commercialUse] - UNKNOWN is treated as FORBIDDEN by every egress guard
/// * [shareAlike]
/// * [attributionRequired]
/// * [redistribution] - UNKNOWN is treated as LOCAL_ONLY by every egress guard
/// * [attributionText]
/// * [termsUrl]
@BuiltValue()
abstract class LicenceTerms
    implements Built<LicenceTerms, LicenceTermsBuilder> {
  /// SPDX id where one exists (CC-BY-4.0, ODbL-1.0, CC0-1.0, CC-BY-NC-SA-4.0, CC-BY-SA-4.0, CC-BY-NC-4.0, PDDL-1.0, OGL-UK-3.0, NLOD-2.0, DL-DE-BY-2.0), else a slug (us-gov-public-domain, opensky-terms, acled-terms, aisstream-terms, unknown)
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// UNKNOWN is treated as FORBIDDEN by every egress guard
  @BuiltValueField(wireName: r'commercialUse')
  LicenceTermsCommercialUseEnum get commercialUse;
  // enum commercialUseEnum {  ALLOWED,  FORBIDDEN,  UNKNOWN,  };

  @BuiltValueField(wireName: r'shareAlike')
  bool get shareAlike;

  @BuiltValueField(wireName: r'attributionRequired')
  bool get attributionRequired;

  /// UNKNOWN is treated as LOCAL_ONLY by every egress guard
  @BuiltValueField(wireName: r'redistribution')
  LicenceTermsRedistributionEnum get redistribution;
  // enum redistributionEnum {  ALLOWED,  LOCAL_ONLY,  FORBIDDEN,  UNKNOWN,  };

  @BuiltValueField(wireName: r'attributionText')
  String? get attributionText;

  @BuiltValueField(wireName: r'termsUrl')
  String? get termsUrl;

  LicenceTerms._();

  factory LicenceTerms([void updates(LicenceTermsBuilder b)]) = _$LicenceTerms;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenceTermsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenceTerms> get serializer => _$LicenceTermsSerializer();
}

class _$LicenceTermsSerializer implements PrimitiveSerializer<LicenceTerms> {
  @override
  final Iterable<Type> types = const [LicenceTerms, _$LicenceTerms];

  @override
  final String wireName = r'LicenceTerms';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenceTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'commercialUse';
    yield serializers.serialize(
      object.commercialUse,
      specifiedType: const FullType(LicenceTermsCommercialUseEnum),
    );
    yield r'shareAlike';
    yield serializers.serialize(
      object.shareAlike,
      specifiedType: const FullType(bool),
    );
    yield r'attributionRequired';
    yield serializers.serialize(
      object.attributionRequired,
      specifiedType: const FullType(bool),
    );
    yield r'redistribution';
    yield serializers.serialize(
      object.redistribution,
      specifiedType: const FullType(LicenceTermsRedistributionEnum),
    );
    if (object.attributionText != null) {
      yield r'attributionText';
      yield serializers.serialize(
        object.attributionText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.termsUrl != null) {
      yield r'termsUrl';
      yield serializers.serialize(
        object.termsUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenceTerms object, {
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
    required LicenceTermsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'commercialUse':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      LicenceTermsCommercialUseEnum,
                    ),
                  )
                  as LicenceTermsCommercialUseEnum;
          result.commercialUse = valueDes;
          break;
        case r'shareAlike':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.shareAlike = valueDes;
          break;
        case r'attributionRequired':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.attributionRequired = valueDes;
          break;
        case r'redistribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      LicenceTermsRedistributionEnum,
                    ),
                  )
                  as LicenceTermsRedistributionEnum;
          result.redistribution = valueDes;
          break;
        case r'attributionText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attributionText = valueDes;
          break;
        case r'termsUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.termsUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenceTerms deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenceTermsBuilder();
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

/// UNKNOWN is treated as FORBIDDEN by every egress guard
class LicenceTermsCommercialUseEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ALLOWED')
  static const LicenceTermsCommercialUseEnum ALLOWED =
      _$licenceTermsCommercialUseEnum_ALLOWED;
  @BuiltValueEnumConst(wireName: r'FORBIDDEN')
  static const LicenceTermsCommercialUseEnum FORBIDDEN =
      _$licenceTermsCommercialUseEnum_FORBIDDEN;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const LicenceTermsCommercialUseEnum UNKNOWN =
      _$licenceTermsCommercialUseEnum_UNKNOWN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LicenceTermsCommercialUseEnum unknownDefaultOpenApi =
      _$licenceTermsCommercialUseEnum_unknownDefaultOpenApi;

  static Serializer<LicenceTermsCommercialUseEnum> get serializer =>
      _$licenceTermsCommercialUseEnumSerializer;

  const LicenceTermsCommercialUseEnum._(String name) : super(name);

  static BuiltSet<LicenceTermsCommercialUseEnum> get values =>
      _$licenceTermsCommercialUseEnumValues;
  static LicenceTermsCommercialUseEnum valueOf(String name) =>
      _$licenceTermsCommercialUseEnumValueOf(name);
}

/// UNKNOWN is treated as LOCAL_ONLY by every egress guard
class LicenceTermsRedistributionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ALLOWED')
  static const LicenceTermsRedistributionEnum ALLOWED =
      _$licenceTermsRedistributionEnum_ALLOWED;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const LicenceTermsRedistributionEnum LOCAL_ONLY =
      _$licenceTermsRedistributionEnum_LOCAL_ONLY;
  @BuiltValueEnumConst(wireName: r'FORBIDDEN')
  static const LicenceTermsRedistributionEnum FORBIDDEN =
      _$licenceTermsRedistributionEnum_FORBIDDEN;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const LicenceTermsRedistributionEnum UNKNOWN =
      _$licenceTermsRedistributionEnum_UNKNOWN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LicenceTermsRedistributionEnum unknownDefaultOpenApi =
      _$licenceTermsRedistributionEnum_unknownDefaultOpenApi;

  static Serializer<LicenceTermsRedistributionEnum> get serializer =>
      _$licenceTermsRedistributionEnumSerializer;

  const LicenceTermsRedistributionEnum._(String name) : super(name);

  static BuiltSet<LicenceTermsRedistributionEnum> get values =>
      _$licenceTermsRedistributionEnumValues;
  static LicenceTermsRedistributionEnum valueOf(String name) =>
      _$licenceTermsRedistributionEnumValueOf(name);
}
