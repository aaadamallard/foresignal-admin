// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provenance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProvenanceLicenceBasisEnum _$provenanceLicenceBasisEnum_batch =
    const ProvenanceLicenceBasisEnum._('batch');
const ProvenanceLicenceBasisEnum _$provenanceLicenceBasisEnum_descriptor =
    const ProvenanceLicenceBasisEnum._('descriptor');
const ProvenanceLicenceBasisEnum _$provenanceLicenceBasisEnum_mlatOverride =
    const ProvenanceLicenceBasisEnum._('mlatOverride');
const ProvenanceLicenceBasisEnum _$provenanceLicenceBasisEnum_peerOrigin =
    const ProvenanceLicenceBasisEnum._('peerOrigin');

ProvenanceLicenceBasisEnum _$provenanceLicenceBasisEnumValueOf(String name) {
  switch (name) {
    case 'batch':
      return _$provenanceLicenceBasisEnum_batch;
    case 'descriptor':
      return _$provenanceLicenceBasisEnum_descriptor;
    case 'mlatOverride':
      return _$provenanceLicenceBasisEnum_mlatOverride;
    case 'peerOrigin':
      return _$provenanceLicenceBasisEnum_peerOrigin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProvenanceLicenceBasisEnum> _$provenanceLicenceBasisEnumValues =
    BuiltSet<ProvenanceLicenceBasisEnum>(const <ProvenanceLicenceBasisEnum>[
      _$provenanceLicenceBasisEnum_batch,
      _$provenanceLicenceBasisEnum_descriptor,
      _$provenanceLicenceBasisEnum_mlatOverride,
      _$provenanceLicenceBasisEnum_peerOrigin,
    ]);

const ProvenanceReliabilityEnum _$provenanceReliabilityEnum_A =
    const ProvenanceReliabilityEnum._('A');
const ProvenanceReliabilityEnum _$provenanceReliabilityEnum_B =
    const ProvenanceReliabilityEnum._('B');
const ProvenanceReliabilityEnum _$provenanceReliabilityEnum_C =
    const ProvenanceReliabilityEnum._('C');
const ProvenanceReliabilityEnum _$provenanceReliabilityEnum_D =
    const ProvenanceReliabilityEnum._('D');
const ProvenanceReliabilityEnum _$provenanceReliabilityEnum_E =
    const ProvenanceReliabilityEnum._('E');
const ProvenanceReliabilityEnum _$provenanceReliabilityEnum_F =
    const ProvenanceReliabilityEnum._('F');

ProvenanceReliabilityEnum _$provenanceReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$provenanceReliabilityEnum_A;
    case 'B':
      return _$provenanceReliabilityEnum_B;
    case 'C':
      return _$provenanceReliabilityEnum_C;
    case 'D':
      return _$provenanceReliabilityEnum_D;
    case 'E':
      return _$provenanceReliabilityEnum_E;
    case 'F':
      return _$provenanceReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProvenanceReliabilityEnum> _$provenanceReliabilityEnumValues =
    BuiltSet<ProvenanceReliabilityEnum>(const <ProvenanceReliabilityEnum>[
      _$provenanceReliabilityEnum_A,
      _$provenanceReliabilityEnum_B,
      _$provenanceReliabilityEnum_C,
      _$provenanceReliabilityEnum_D,
      _$provenanceReliabilityEnum_E,
      _$provenanceReliabilityEnum_F,
    ]);

Serializer<ProvenanceLicenceBasisEnum> _$provenanceLicenceBasisEnumSerializer =
    _$ProvenanceLicenceBasisEnumSerializer();
Serializer<ProvenanceReliabilityEnum> _$provenanceReliabilityEnumSerializer =
    _$ProvenanceReliabilityEnumSerializer();

class _$ProvenanceLicenceBasisEnumSerializer
    implements PrimitiveSerializer<ProvenanceLicenceBasisEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'batch': 'batch',
    'descriptor': 'descriptor',
    'mlatOverride': 'mlat-override',
    'peerOrigin': 'peer-origin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'batch': 'batch',
    'descriptor': 'descriptor',
    'mlat-override': 'mlatOverride',
    'peer-origin': 'peerOrigin',
  };

  @override
  final Iterable<Type> types = const <Type>[ProvenanceLicenceBasisEnum];
  @override
  final String wireName = 'ProvenanceLicenceBasisEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProvenanceLicenceBasisEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProvenanceLicenceBasisEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProvenanceLicenceBasisEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProvenanceReliabilityEnumSerializer
    implements PrimitiveSerializer<ProvenanceReliabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };

  @override
  final Iterable<Type> types = const <Type>[ProvenanceReliabilityEnum];
  @override
  final String wireName = 'ProvenanceReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProvenanceReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProvenanceReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProvenanceReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Provenance extends Provenance {
  @override
  final BuiltList<String>? sourceIds;
  @override
  final String? manifestId;
  @override
  final int? asOfSeq;
  @override
  final LicenceTerms? licence;
  @override
  final ProvenanceLicenceBasisEnum? licenceBasis;
  @override
  final int? fetchId;
  @override
  final String? adapterVersion;
  @override
  final String? principal;
  @override
  final ProvenanceReliabilityEnum? reliability;
  @override
  final int? credibility;
  @override
  final String? grade;
  @override
  final ProvenanceHop? origin;
  @override
  final BuiltList<ProvenanceHop>? chain;

  factory _$Provenance([void Function(ProvenanceBuilder)? updates]) =>
      (ProvenanceBuilder()..update(updates))._build();

  _$Provenance._({
    this.sourceIds,
    this.manifestId,
    this.asOfSeq,
    this.licence,
    this.licenceBasis,
    this.fetchId,
    this.adapterVersion,
    this.principal,
    this.reliability,
    this.credibility,
    this.grade,
    this.origin,
    this.chain,
  }) : super._();
  @override
  Provenance rebuild(void Function(ProvenanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvenanceBuilder toBuilder() => ProvenanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Provenance &&
        sourceIds == other.sourceIds &&
        manifestId == other.manifestId &&
        asOfSeq == other.asOfSeq &&
        licence == other.licence &&
        licenceBasis == other.licenceBasis &&
        fetchId == other.fetchId &&
        adapterVersion == other.adapterVersion &&
        principal == other.principal &&
        reliability == other.reliability &&
        credibility == other.credibility &&
        grade == other.grade &&
        origin == other.origin &&
        chain == other.chain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceIds.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, licenceBasis.hashCode);
    _$hash = $jc(_$hash, fetchId.hashCode);
    _$hash = $jc(_$hash, adapterVersion.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jc(_$hash, credibility.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, chain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Provenance')
          ..add('sourceIds', sourceIds)
          ..add('manifestId', manifestId)
          ..add('asOfSeq', asOfSeq)
          ..add('licence', licence)
          ..add('licenceBasis', licenceBasis)
          ..add('fetchId', fetchId)
          ..add('adapterVersion', adapterVersion)
          ..add('principal', principal)
          ..add('reliability', reliability)
          ..add('credibility', credibility)
          ..add('grade', grade)
          ..add('origin', origin)
          ..add('chain', chain))
        .toString();
  }
}

class ProvenanceBuilder implements Builder<Provenance, ProvenanceBuilder> {
  _$Provenance? _$v;

  ListBuilder<String>? _sourceIds;
  ListBuilder<String> get sourceIds =>
      _$this._sourceIds ??= ListBuilder<String>();
  set sourceIds(ListBuilder<String>? sourceIds) =>
      _$this._sourceIds = sourceIds;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  LicenceTermsBuilder? _licence;
  LicenceTermsBuilder get licence => _$this._licence ??= LicenceTermsBuilder();
  set licence(LicenceTermsBuilder? licence) => _$this._licence = licence;

  ProvenanceLicenceBasisEnum? _licenceBasis;
  ProvenanceLicenceBasisEnum? get licenceBasis => _$this._licenceBasis;
  set licenceBasis(ProvenanceLicenceBasisEnum? licenceBasis) =>
      _$this._licenceBasis = licenceBasis;

  int? _fetchId;
  int? get fetchId => _$this._fetchId;
  set fetchId(int? fetchId) => _$this._fetchId = fetchId;

  String? _adapterVersion;
  String? get adapterVersion => _$this._adapterVersion;
  set adapterVersion(String? adapterVersion) =>
      _$this._adapterVersion = adapterVersion;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  ProvenanceReliabilityEnum? _reliability;
  ProvenanceReliabilityEnum? get reliability => _$this._reliability;
  set reliability(ProvenanceReliabilityEnum? reliability) =>
      _$this._reliability = reliability;

  int? _credibility;
  int? get credibility => _$this._credibility;
  set credibility(int? credibility) => _$this._credibility = credibility;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  ProvenanceHopBuilder? _origin;
  ProvenanceHopBuilder get origin => _$this._origin ??= ProvenanceHopBuilder();
  set origin(ProvenanceHopBuilder? origin) => _$this._origin = origin;

  ListBuilder<ProvenanceHop>? _chain;
  ListBuilder<ProvenanceHop> get chain =>
      _$this._chain ??= ListBuilder<ProvenanceHop>();
  set chain(ListBuilder<ProvenanceHop>? chain) => _$this._chain = chain;

  ProvenanceBuilder() {
    Provenance._defaults(this);
  }

  ProvenanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceIds = $v.sourceIds?.toBuilder();
      _manifestId = $v.manifestId;
      _asOfSeq = $v.asOfSeq;
      _licence = $v.licence?.toBuilder();
      _licenceBasis = $v.licenceBasis;
      _fetchId = $v.fetchId;
      _adapterVersion = $v.adapterVersion;
      _principal = $v.principal;
      _reliability = $v.reliability;
      _credibility = $v.credibility;
      _grade = $v.grade;
      _origin = $v.origin?.toBuilder();
      _chain = $v.chain?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Provenance other) {
    _$v = other as _$Provenance;
  }

  @override
  void update(void Function(ProvenanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Provenance build() => _build();

  _$Provenance _build() {
    _$Provenance _$result;
    try {
      _$result =
          _$v ??
          _$Provenance._(
            sourceIds: _sourceIds?.build(),
            manifestId: manifestId,
            asOfSeq: asOfSeq,
            licence: _licence?.build(),
            licenceBasis: licenceBasis,
            fetchId: fetchId,
            adapterVersion: adapterVersion,
            principal: principal,
            reliability: reliability,
            credibility: credibility,
            grade: grade,
            origin: _origin?.build(),
            chain: _chain?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceIds';
        _sourceIds?.build();

        _$failedField = 'licence';
        _licence?.build();

        _$failedField = 'origin';
        _origin?.build();
        _$failedField = 'chain';
        _chain?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Provenance',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
