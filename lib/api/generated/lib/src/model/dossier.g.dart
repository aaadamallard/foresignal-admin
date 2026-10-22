// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Dossier extends Dossier {
  @override
  final String ref;
  @override
  final ObjectEnvelope envelope;
  @override
  final DateTime? asOf;
  @override
  final DateTime generatedAt;
  @override
  final DossierSections sections;
  @override
  final bool? truncated;
  @override
  final DossierCoverage? coverage;

  factory _$Dossier([void Function(DossierBuilder)? updates]) =>
      (DossierBuilder()..update(updates))._build();

  _$Dossier._(
      {required this.ref,
      required this.envelope,
      this.asOf,
      required this.generatedAt,
      required this.sections,
      this.truncated,
      this.coverage})
      : super._();
  @override
  Dossier rebuild(void Function(DossierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierBuilder toBuilder() => DossierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dossier &&
        ref == other.ref &&
        envelope == other.envelope &&
        asOf == other.asOf &&
        generatedAt == other.generatedAt &&
        sections == other.sections &&
        truncated == other.truncated &&
        coverage == other.coverage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Dossier')
          ..add('ref', ref)
          ..add('envelope', envelope)
          ..add('asOf', asOf)
          ..add('generatedAt', generatedAt)
          ..add('sections', sections)
          ..add('truncated', truncated)
          ..add('coverage', coverage))
        .toString();
  }
}

class DossierBuilder implements Builder<Dossier, DossierBuilder> {
  _$Dossier? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  DossierSectionsBuilder? _sections;
  DossierSectionsBuilder get sections =>
      _$this._sections ??= DossierSectionsBuilder();
  set sections(DossierSectionsBuilder? sections) => _$this._sections = sections;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  DossierCoverageBuilder? _coverage;
  DossierCoverageBuilder get coverage =>
      _$this._coverage ??= DossierCoverageBuilder();
  set coverage(DossierCoverageBuilder? coverage) => _$this._coverage = coverage;

  DossierBuilder() {
    Dossier._defaults(this);
  }

  DossierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _envelope = $v.envelope.toBuilder();
      _asOf = $v.asOf;
      _generatedAt = $v.generatedAt;
      _sections = $v.sections.toBuilder();
      _truncated = $v.truncated;
      _coverage = $v.coverage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dossier other) {
    _$v = other as _$Dossier;
  }

  @override
  void update(void Function(DossierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Dossier build() => _build();

  _$Dossier _build() {
    _$Dossier _$result;
    try {
      _$result = _$v ??
          _$Dossier._(
            ref: BuiltValueNullFieldError.checkNotNull(ref, r'Dossier', 'ref'),
            envelope: envelope.build(),
            asOf: asOf,
            generatedAt: BuiltValueNullFieldError.checkNotNull(
                generatedAt, r'Dossier', 'generatedAt'),
            sections: sections.build(),
            truncated: truncated,
            coverage: _coverage?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        envelope.build();

        _$failedField = 'sections';
        sections.build();

        _$failedField = 'coverage';
        _coverage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Dossier', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
