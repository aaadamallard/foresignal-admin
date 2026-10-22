// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InformationValue extends InformationValue {
  @override
  final String setId;
  @override
  final DateTime computedAt;
  @override
  final num entropy;
  @override
  final String? version;
  @override
  final BuiltList<InformationValueIndicatorsInner> indicators;

  factory _$InformationValue(
          [void Function(InformationValueBuilder)? updates]) =>
      (InformationValueBuilder()..update(updates))._build();

  _$InformationValue._(
      {required this.setId,
      required this.computedAt,
      required this.entropy,
      this.version,
      required this.indicators})
      : super._();
  @override
  InformationValue rebuild(void Function(InformationValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InformationValueBuilder toBuilder() =>
      InformationValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InformationValue &&
        setId == other.setId &&
        computedAt == other.computedAt &&
        entropy == other.entropy &&
        version == other.version &&
        indicators == other.indicators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, entropy.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, indicators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InformationValue')
          ..add('setId', setId)
          ..add('computedAt', computedAt)
          ..add('entropy', entropy)
          ..add('version', version)
          ..add('indicators', indicators))
        .toString();
  }
}

class InformationValueBuilder
    implements Builder<InformationValue, InformationValueBuilder> {
  _$InformationValue? _$v;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  num? _entropy;
  num? get entropy => _$this._entropy;
  set entropy(num? entropy) => _$this._entropy = entropy;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ListBuilder<InformationValueIndicatorsInner>? _indicators;
  ListBuilder<InformationValueIndicatorsInner> get indicators =>
      _$this._indicators ??= ListBuilder<InformationValueIndicatorsInner>();
  set indicators(ListBuilder<InformationValueIndicatorsInner>? indicators) =>
      _$this._indicators = indicators;

  InformationValueBuilder() {
    InformationValue._defaults(this);
  }

  InformationValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setId = $v.setId;
      _computedAt = $v.computedAt;
      _entropy = $v.entropy;
      _version = $v.version;
      _indicators = $v.indicators.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InformationValue other) {
    _$v = other as _$InformationValue;
  }

  @override
  void update(void Function(InformationValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InformationValue build() => _build();

  _$InformationValue _build() {
    _$InformationValue _$result;
    try {
      _$result = _$v ??
          _$InformationValue._(
            setId: BuiltValueNullFieldError.checkNotNull(
                setId, r'InformationValue', 'setId'),
            computedAt: BuiltValueNullFieldError.checkNotNull(
                computedAt, r'InformationValue', 'computedAt'),
            entropy: BuiltValueNullFieldError.checkNotNull(
                entropy, r'InformationValue', 'entropy'),
            version: version,
            indicators: indicators.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'indicators';
        indicators.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InformationValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
