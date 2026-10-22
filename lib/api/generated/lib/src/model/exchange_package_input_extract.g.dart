// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_package_input_extract.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExchangePackageInputExtract extends ExchangePackageInputExtract {
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final BuiltList<String>? layers;

  factory _$ExchangePackageInputExtract([
    void Function(ExchangePackageInputExtractBuilder)? updates,
  ]) => (ExchangePackageInputExtractBuilder()..update(updates))._build();

  _$ExchangePackageInputExtract._({this.from, this.to, this.layers})
    : super._();
  @override
  ExchangePackageInputExtract rebuild(
    void Function(ExchangePackageInputExtractBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExchangePackageInputExtractBuilder toBuilder() =>
      ExchangePackageInputExtractBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangePackageInputExtract &&
        from == other.from &&
        to == other.to &&
        layers == other.layers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExchangePackageInputExtract')
          ..add('from', from)
          ..add('to', to)
          ..add('layers', layers))
        .toString();
  }
}

class ExchangePackageInputExtractBuilder
    implements
        Builder<
          ExchangePackageInputExtract,
          ExchangePackageInputExtractBuilder
        > {
  _$ExchangePackageInputExtract? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ListBuilder<String>? _layers;
  ListBuilder<String> get layers => _$this._layers ??= ListBuilder<String>();
  set layers(ListBuilder<String>? layers) => _$this._layers = layers;

  ExchangePackageInputExtractBuilder() {
    ExchangePackageInputExtract._defaults(this);
  }

  ExchangePackageInputExtractBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _layers = $v.layers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangePackageInputExtract other) {
    _$v = other as _$ExchangePackageInputExtract;
  }

  @override
  void update(void Function(ExchangePackageInputExtractBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExchangePackageInputExtract build() => _build();

  _$ExchangePackageInputExtract _build() {
    _$ExchangePackageInputExtract _$result;
    try {
      _$result =
          _$v ??
          _$ExchangePackageInputExtract._(
            from: from,
            to: to,
            layers: _layers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'layers';
        _layers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExchangePackageInputExtract',
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
