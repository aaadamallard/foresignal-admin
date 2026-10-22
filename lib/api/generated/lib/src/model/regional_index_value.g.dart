// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionalIndexValue extends RegionalIndexValue {
  @override
  final String indexId;
  @override
  final String region;
  @override
  final Date day;
  @override
  final num value;
  @override
  final BuiltList<RegionalIndexValueComponentsInner> components;
  @override
  final BuiltList<String>? floorsApplied;
  @override
  final num? delta24h;
  @override
  final num? delta7d;
  @override
  final int? weightsVersion;
  @override
  final int asOfSeq;
  @override
  final String? manifestId;
  @override
  final String? recordRef;

  factory _$RegionalIndexValue(
          [void Function(RegionalIndexValueBuilder)? updates]) =>
      (RegionalIndexValueBuilder()..update(updates))._build();

  _$RegionalIndexValue._(
      {required this.indexId,
      required this.region,
      required this.day,
      required this.value,
      required this.components,
      this.floorsApplied,
      this.delta24h,
      this.delta7d,
      this.weightsVersion,
      required this.asOfSeq,
      this.manifestId,
      this.recordRef})
      : super._();
  @override
  RegionalIndexValue rebuild(
          void Function(RegionalIndexValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalIndexValueBuilder toBuilder() =>
      RegionalIndexValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexValue &&
        indexId == other.indexId &&
        region == other.region &&
        day == other.day &&
        value == other.value &&
        components == other.components &&
        floorsApplied == other.floorsApplied &&
        delta24h == other.delta24h &&
        delta7d == other.delta7d &&
        weightsVersion == other.weightsVersion &&
        asOfSeq == other.asOfSeq &&
        manifestId == other.manifestId &&
        recordRef == other.recordRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, floorsApplied.hashCode);
    _$hash = $jc(_$hash, delta24h.hashCode);
    _$hash = $jc(_$hash, delta7d.hashCode);
    _$hash = $jc(_$hash, weightsVersion.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, recordRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexValue')
          ..add('indexId', indexId)
          ..add('region', region)
          ..add('day', day)
          ..add('value', value)
          ..add('components', components)
          ..add('floorsApplied', floorsApplied)
          ..add('delta24h', delta24h)
          ..add('delta7d', delta7d)
          ..add('weightsVersion', weightsVersion)
          ..add('asOfSeq', asOfSeq)
          ..add('manifestId', manifestId)
          ..add('recordRef', recordRef))
        .toString();
  }
}

class RegionalIndexValueBuilder
    implements Builder<RegionalIndexValue, RegionalIndexValueBuilder> {
  _$RegionalIndexValue? _$v;

  String? _indexId;
  String? get indexId => _$this._indexId;
  set indexId(String? indexId) => _$this._indexId = indexId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  Date? _day;
  Date? get day => _$this._day;
  set day(Date? day) => _$this._day = day;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  ListBuilder<RegionalIndexValueComponentsInner>? _components;
  ListBuilder<RegionalIndexValueComponentsInner> get components =>
      _$this._components ??= ListBuilder<RegionalIndexValueComponentsInner>();
  set components(ListBuilder<RegionalIndexValueComponentsInner>? components) =>
      _$this._components = components;

  ListBuilder<String>? _floorsApplied;
  ListBuilder<String> get floorsApplied =>
      _$this._floorsApplied ??= ListBuilder<String>();
  set floorsApplied(ListBuilder<String>? floorsApplied) =>
      _$this._floorsApplied = floorsApplied;

  num? _delta24h;
  num? get delta24h => _$this._delta24h;
  set delta24h(num? delta24h) => _$this._delta24h = delta24h;

  num? _delta7d;
  num? get delta7d => _$this._delta7d;
  set delta7d(num? delta7d) => _$this._delta7d = delta7d;

  int? _weightsVersion;
  int? get weightsVersion => _$this._weightsVersion;
  set weightsVersion(int? weightsVersion) =>
      _$this._weightsVersion = weightsVersion;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  String? _recordRef;
  String? get recordRef => _$this._recordRef;
  set recordRef(String? recordRef) => _$this._recordRef = recordRef;

  RegionalIndexValueBuilder() {
    RegionalIndexValue._defaults(this);
  }

  RegionalIndexValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexId = $v.indexId;
      _region = $v.region;
      _day = $v.day;
      _value = $v.value;
      _components = $v.components.toBuilder();
      _floorsApplied = $v.floorsApplied?.toBuilder();
      _delta24h = $v.delta24h;
      _delta7d = $v.delta7d;
      _weightsVersion = $v.weightsVersion;
      _asOfSeq = $v.asOfSeq;
      _manifestId = $v.manifestId;
      _recordRef = $v.recordRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexValue other) {
    _$v = other as _$RegionalIndexValue;
  }

  @override
  void update(void Function(RegionalIndexValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexValue build() => _build();

  _$RegionalIndexValue _build() {
    _$RegionalIndexValue _$result;
    try {
      _$result = _$v ??
          _$RegionalIndexValue._(
            indexId: BuiltValueNullFieldError.checkNotNull(
                indexId, r'RegionalIndexValue', 'indexId'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'RegionalIndexValue', 'region'),
            day: BuiltValueNullFieldError.checkNotNull(
                day, r'RegionalIndexValue', 'day'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'RegionalIndexValue', 'value'),
            components: components.build(),
            floorsApplied: _floorsApplied?.build(),
            delta24h: delta24h,
            delta7d: delta7d,
            weightsVersion: weightsVersion,
            asOfSeq: BuiltValueNullFieldError.checkNotNull(
                asOfSeq, r'RegionalIndexValue', 'asOfSeq'),
            manifestId: manifestId,
            recordRef: recordRef,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();
        _$failedField = 'floorsApplied';
        _floorsApplied?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegionalIndexValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
