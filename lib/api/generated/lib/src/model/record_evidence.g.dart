// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordEvidence extends RecordEvidence {
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final Originator originator;
  @override
  final BuiltList<ObservationLink> links;
  @override
  final BuiltList<CanonicalEvent> canonicalEvents;

  factory _$RecordEvidence([void Function(RecordEvidenceBuilder)? updates]) =>
      (RecordEvidenceBuilder()..update(updates))._build();

  _$RecordEvidence._(
      {required this.sourceId,
      required this.externalId,
      required this.originator,
      required this.links,
      required this.canonicalEvents})
      : super._();
  @override
  RecordEvidence rebuild(void Function(RecordEvidenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordEvidenceBuilder toBuilder() => RecordEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordEvidence &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        originator == other.originator &&
        links == other.links &&
        canonicalEvents == other.canonicalEvents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, canonicalEvents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordEvidence')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('originator', originator)
          ..add('links', links)
          ..add('canonicalEvents', canonicalEvents))
        .toString();
  }
}

class RecordEvidenceBuilder
    implements Builder<RecordEvidence, RecordEvidenceBuilder> {
  _$RecordEvidence? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  OriginatorBuilder? _originator;
  OriginatorBuilder get originator =>
      _$this._originator ??= OriginatorBuilder();
  set originator(OriginatorBuilder? originator) =>
      _$this._originator = originator;

  ListBuilder<ObservationLink>? _links;
  ListBuilder<ObservationLink> get links =>
      _$this._links ??= ListBuilder<ObservationLink>();
  set links(ListBuilder<ObservationLink>? links) => _$this._links = links;

  ListBuilder<CanonicalEvent>? _canonicalEvents;
  ListBuilder<CanonicalEvent> get canonicalEvents =>
      _$this._canonicalEvents ??= ListBuilder<CanonicalEvent>();
  set canonicalEvents(ListBuilder<CanonicalEvent>? canonicalEvents) =>
      _$this._canonicalEvents = canonicalEvents;

  RecordEvidenceBuilder() {
    RecordEvidence._defaults(this);
  }

  RecordEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _originator = $v.originator.toBuilder();
      _links = $v.links.toBuilder();
      _canonicalEvents = $v.canonicalEvents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordEvidence other) {
    _$v = other as _$RecordEvidence;
  }

  @override
  void update(void Function(RecordEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordEvidence build() => _build();

  _$RecordEvidence _build() {
    _$RecordEvidence _$result;
    try {
      _$result = _$v ??
          _$RecordEvidence._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'RecordEvidence', 'sourceId'),
            externalId: BuiltValueNullFieldError.checkNotNull(
                externalId, r'RecordEvidence', 'externalId'),
            originator: originator.build(),
            links: links.build(),
            canonicalEvents: canonicalEvents.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'originator';
        originator.build();
        _$failedField = 'links';
        links.build();
        _$failedField = 'canonicalEvents';
        canonicalEvents.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecordEvidence', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
