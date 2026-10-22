// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_forecast_official_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DossierSectionsForecastOfficialInner
    extends DossierSectionsForecastOfficialInner {
  @override
  final String ref;
  @override
  final String? title;
  @override
  final String? kind;
  @override
  final String issuer;
  @override
  final DateTime? issuedAt;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;
  @override
  final String? note;

  factory _$DossierSectionsForecastOfficialInner(
          [void Function(DossierSectionsForecastOfficialInnerBuilder)?
              updates]) =>
      (DossierSectionsForecastOfficialInnerBuilder()..update(updates))._build();

  _$DossierSectionsForecastOfficialInner._(
      {required this.ref,
      this.title,
      this.kind,
      required this.issuer,
      this.issuedAt,
      this.validFrom,
      this.validTo,
      this.note})
      : super._();
  @override
  DossierSectionsForecastOfficialInner rebuild(
          void Function(DossierSectionsForecastOfficialInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsForecastOfficialInnerBuilder toBuilder() =>
      DossierSectionsForecastOfficialInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsForecastOfficialInner &&
        ref == other.ref &&
        title == other.title &&
        kind == other.kind &&
        issuer == other.issuer &&
        issuedAt == other.issuedAt &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, issuedAt.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsForecastOfficialInner')
          ..add('ref', ref)
          ..add('title', title)
          ..add('kind', kind)
          ..add('issuer', issuer)
          ..add('issuedAt', issuedAt)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('note', note))
        .toString();
  }
}

class DossierSectionsForecastOfficialInnerBuilder
    implements
        Builder<DossierSectionsForecastOfficialInner,
            DossierSectionsForecastOfficialInnerBuilder> {
  _$DossierSectionsForecastOfficialInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  DateTime? _issuedAt;
  DateTime? get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime? issuedAt) => _$this._issuedAt = issuedAt;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  DossierSectionsForecastOfficialInnerBuilder() {
    DossierSectionsForecastOfficialInner._defaults(this);
  }

  DossierSectionsForecastOfficialInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _title = $v.title;
      _kind = $v.kind;
      _issuer = $v.issuer;
      _issuedAt = $v.issuedAt;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsForecastOfficialInner other) {
    _$v = other as _$DossierSectionsForecastOfficialInner;
  }

  @override
  void update(
      void Function(DossierSectionsForecastOfficialInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsForecastOfficialInner build() => _build();

  _$DossierSectionsForecastOfficialInner _build() {
    final _$result = _$v ??
        _$DossierSectionsForecastOfficialInner._(
          ref: BuiltValueNullFieldError.checkNotNull(
              ref, r'DossierSectionsForecastOfficialInner', 'ref'),
          title: title,
          kind: kind,
          issuer: BuiltValueNullFieldError.checkNotNull(
              issuer, r'DossierSectionsForecastOfficialInner', 'issuer'),
          issuedAt: issuedAt,
          validFrom: validFrom,
          validTo: validTo,
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
