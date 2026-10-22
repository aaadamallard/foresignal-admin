// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_value_components_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionalIndexValueComponentsInner
    extends RegionalIndexValueComponentsInner {
  @override
  final String key;
  @override
  final num? raw;
  @override
  final num normalised;
  @override
  final num weight;
  @override
  final num contribution;
  @override
  final bool? missing;

  factory _$RegionalIndexValueComponentsInner(
          [void Function(RegionalIndexValueComponentsInnerBuilder)? updates]) =>
      (RegionalIndexValueComponentsInnerBuilder()..update(updates))._build();

  _$RegionalIndexValueComponentsInner._(
      {required this.key,
      this.raw,
      required this.normalised,
      required this.weight,
      required this.contribution,
      this.missing})
      : super._();
  @override
  RegionalIndexValueComponentsInner rebuild(
          void Function(RegionalIndexValueComponentsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalIndexValueComponentsInnerBuilder toBuilder() =>
      RegionalIndexValueComponentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexValueComponentsInner &&
        key == other.key &&
        raw == other.raw &&
        normalised == other.normalised &&
        weight == other.weight &&
        contribution == other.contribution &&
        missing == other.missing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, raw.hashCode);
    _$hash = $jc(_$hash, normalised.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, contribution.hashCode);
    _$hash = $jc(_$hash, missing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexValueComponentsInner')
          ..add('key', key)
          ..add('raw', raw)
          ..add('normalised', normalised)
          ..add('weight', weight)
          ..add('contribution', contribution)
          ..add('missing', missing))
        .toString();
  }
}

class RegionalIndexValueComponentsInnerBuilder
    implements
        Builder<RegionalIndexValueComponentsInner,
            RegionalIndexValueComponentsInnerBuilder> {
  _$RegionalIndexValueComponentsInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  num? _raw;
  num? get raw => _$this._raw;
  set raw(num? raw) => _$this._raw = raw;

  num? _normalised;
  num? get normalised => _$this._normalised;
  set normalised(num? normalised) => _$this._normalised = normalised;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  num? _contribution;
  num? get contribution => _$this._contribution;
  set contribution(num? contribution) => _$this._contribution = contribution;

  bool? _missing;
  bool? get missing => _$this._missing;
  set missing(bool? missing) => _$this._missing = missing;

  RegionalIndexValueComponentsInnerBuilder() {
    RegionalIndexValueComponentsInner._defaults(this);
  }

  RegionalIndexValueComponentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _raw = $v.raw;
      _normalised = $v.normalised;
      _weight = $v.weight;
      _contribution = $v.contribution;
      _missing = $v.missing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexValueComponentsInner other) {
    _$v = other as _$RegionalIndexValueComponentsInner;
  }

  @override
  void update(
      void Function(RegionalIndexValueComponentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexValueComponentsInner build() => _build();

  _$RegionalIndexValueComponentsInner _build() {
    final _$result = _$v ??
        _$RegionalIndexValueComponentsInner._(
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'RegionalIndexValueComponentsInner', 'key'),
          raw: raw,
          normalised: BuiltValueNullFieldError.checkNotNull(
              normalised, r'RegionalIndexValueComponentsInner', 'normalised'),
          weight: BuiltValueNullFieldError.checkNotNull(
              weight, r'RegionalIndexValueComponentsInner', 'weight'),
          contribution: BuiltValueNullFieldError.checkNotNull(contribution,
              r'RegionalIndexValueComponentsInner', 'contribution'),
          missing: missing,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
