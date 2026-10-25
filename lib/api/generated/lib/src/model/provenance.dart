//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/provenance_hop.dart';
import 'package:foresignal_api/src/model/licence_terms.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provenance.g.dart';

/// Provenance
///
/// Properties:
/// * [sourceIds]
/// * [manifestId] - ULID identifier
/// * [asOfSeq]
/// * [licence]
/// * [licenceBasis] - How the licence was resolved: the batch snapshot, the source's current descriptor (batch missing), the per-record MLAT LOCAL_ONLY downgrade, or a peer record's _foresignal.originLicence
/// * [fetchId] - fetch_log id of the batch that wrote the version
/// * [adapterVersion]
/// * [principal] - Push principal; admin only
/// * [reliability] - Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
/// * [credibility] - Admiralty information credibility: 1 confirmed, 2 probably true, 3 possibly true, 4 doubtful, 5 improbable, 6 cannot be judged
/// * [grade] - Admiralty grade = reliability + credibility, computed at read time
/// * [origin]
/// * [chain] - Federation: origin first, one hop appended per instance that re-served the record
@BuiltValue()
abstract class Provenance implements Built<Provenance, ProvenanceBuilder> {
  @BuiltValueField(wireName: r'sourceIds')
  BuiltList<String>? get sourceIds;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'asOfSeq')
  int? get asOfSeq;

  @BuiltValueField(wireName: r'licence')
  LicenceTerms? get licence;

  /// How the licence was resolved: the batch snapshot, the source's current descriptor (batch missing), the per-record MLAT LOCAL_ONLY downgrade, or a peer record's _foresignal.originLicence
  @BuiltValueField(wireName: r'licenceBasis')
  ProvenanceLicenceBasisEnum? get licenceBasis;
  // enum licenceBasisEnum {  batch,  descriptor,  mlat-override,  peer-origin,  };

  /// fetch_log id of the batch that wrote the version
  @BuiltValueField(wireName: r'fetchId')
  int? get fetchId;

  @BuiltValueField(wireName: r'adapterVersion')
  String? get adapterVersion;

  /// Push principal; admin only
  @BuiltValueField(wireName: r'principal')
  String? get principal;

  /// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
  @BuiltValueField(wireName: r'reliability')
  ProvenanceReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  /// Admiralty information credibility: 1 confirmed, 2 probably true, 3 possibly true, 4 doubtful, 5 improbable, 6 cannot be judged
  @BuiltValueField(wireName: r'credibility')
  int? get credibility;

  /// Admiralty grade = reliability + credibility, computed at read time
  @BuiltValueField(wireName: r'grade')
  String? get grade;

  @BuiltValueField(wireName: r'origin')
  ProvenanceHop? get origin;

  /// Federation: origin first, one hop appended per instance that re-served the record
  @BuiltValueField(wireName: r'chain')
  BuiltList<ProvenanceHop>? get chain;

  Provenance._();

  factory Provenance([void updates(ProvenanceBuilder b)]) = _$Provenance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProvenanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Provenance> get serializer => _$ProvenanceSerializer();
}

class _$ProvenanceSerializer implements PrimitiveSerializer<Provenance> {
  @override
  final Iterable<Type> types = const [Provenance, _$Provenance];

  @override
  final String wireName = r'Provenance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Provenance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sourceIds != null) {
      yield r'sourceIds';
      yield serializers.serialize(
        object.sourceIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.asOfSeq != null) {
      yield r'asOfSeq';
      yield serializers.serialize(
        object.asOfSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType(LicenceTerms),
      );
    }
    if (object.licenceBasis != null) {
      yield r'licenceBasis';
      yield serializers.serialize(
        object.licenceBasis,
        specifiedType: const FullType(ProvenanceLicenceBasisEnum),
      );
    }
    if (object.fetchId != null) {
      yield r'fetchId';
      yield serializers.serialize(
        object.fetchId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.adapterVersion != null) {
      yield r'adapterVersion';
      yield serializers.serialize(
        object.adapterVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.principal != null) {
      yield r'principal';
      yield serializers.serialize(
        object.principal,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType(ProvenanceReliabilityEnum),
      );
    }
    if (object.credibility != null) {
      yield r'credibility';
      yield serializers.serialize(
        object.credibility,
        specifiedType: const FullType(int),
      );
    }
    if (object.grade != null) {
      yield r'grade';
      yield serializers.serialize(
        object.grade,
        specifiedType: const FullType(String),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(ProvenanceHop),
      );
    }
    if (object.chain != null) {
      yield r'chain';
      yield serializers.serialize(
        object.chain,
        specifiedType: const FullType(BuiltList, [FullType(ProvenanceHop)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Provenance object, {
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
    required ProvenanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sourceIds.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'asOfSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.asOfSeq = valueDes;
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LicenceTerms),
                  )
                  as LicenceTerms?;
          if (valueDes == null) continue;
          result.licence.replace(valueDes);
          break;
        case r'licenceBasis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProvenanceLicenceBasisEnum,
                    ),
                  )
                  as ProvenanceLicenceBasisEnum?;
          if (valueDes == null) continue;
          result.licenceBasis = valueDes;
          break;
        case r'fetchId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fetchId = valueDes;
          break;
        case r'adapterVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.adapterVersion = valueDes;
          break;
        case r'principal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principal = valueDes;
          break;
        case r'reliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProvenanceReliabilityEnum,
                    ),
                  )
                  as ProvenanceReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        case r'credibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.credibility = valueDes;
          break;
        case r'grade':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.grade = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProvenanceHop),
                  )
                  as ProvenanceHop?;
          if (valueDes == null) continue;
          result.origin.replace(valueDes);
          break;
        case r'chain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProvenanceHop),
                    ]),
                  )
                  as BuiltList<ProvenanceHop>?;
          if (valueDes == null) continue;
          result.chain.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Provenance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvenanceBuilder();
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

/// How the licence was resolved: the batch snapshot, the source's current descriptor (batch missing), the per-record MLAT LOCAL_ONLY downgrade, or a peer record's _foresignal.originLicence
class ProvenanceLicenceBasisEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'batch')
  static const ProvenanceLicenceBasisEnum batch =
      _$provenanceLicenceBasisEnum_batch;
  @BuiltValueEnumConst(wireName: r'descriptor')
  static const ProvenanceLicenceBasisEnum descriptor =
      _$provenanceLicenceBasisEnum_descriptor;
  @BuiltValueEnumConst(wireName: r'mlat-override')
  static const ProvenanceLicenceBasisEnum mlatOverride =
      _$provenanceLicenceBasisEnum_mlatOverride;
  @BuiltValueEnumConst(wireName: r'peer-origin')
  static const ProvenanceLicenceBasisEnum peerOrigin =
      _$provenanceLicenceBasisEnum_peerOrigin;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProvenanceLicenceBasisEnum unknownDefaultOpenApi =
      _$provenanceLicenceBasisEnum_unknownDefaultOpenApi;

  static Serializer<ProvenanceLicenceBasisEnum> get serializer =>
      _$provenanceLicenceBasisEnumSerializer;

  const ProvenanceLicenceBasisEnum._(String name) : super(name);

  static BuiltSet<ProvenanceLicenceBasisEnum> get values =>
      _$provenanceLicenceBasisEnumValues;
  static ProvenanceLicenceBasisEnum valueOf(String name) =>
      _$provenanceLicenceBasisEnumValueOf(name);
}

/// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
class ProvenanceReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const ProvenanceReliabilityEnum A = _$provenanceReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const ProvenanceReliabilityEnum B = _$provenanceReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const ProvenanceReliabilityEnum C = _$provenanceReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const ProvenanceReliabilityEnum D = _$provenanceReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const ProvenanceReliabilityEnum E = _$provenanceReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const ProvenanceReliabilityEnum F = _$provenanceReliabilityEnum_F;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProvenanceReliabilityEnum unknownDefaultOpenApi =
      _$provenanceReliabilityEnum_unknownDefaultOpenApi;

  static Serializer<ProvenanceReliabilityEnum> get serializer =>
      _$provenanceReliabilityEnumSerializer;

  const ProvenanceReliabilityEnum._(String name) : super(name);

  static BuiltSet<ProvenanceReliabilityEnum> get values =>
      _$provenanceReliabilityEnumValues;
  static ProvenanceReliabilityEnum valueOf(String name) =>
      _$provenanceReliabilityEnumValueOf(name);
}
