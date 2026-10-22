// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorTestInput extends PrecursorTestInput {
  @override
  final String name;
  @override
  final String? statement;
  @override
  final JsonObject? antecedent;
  @override
  final JsonObject? consequent;
  @override
  final String? minLag;
  @override
  final String maxLag;
  @override
  final JsonObject? spatial;
  @override
  final String? dedupWindow;

  factory _$PrecursorTestInput(
          [void Function(PrecursorTestInputBuilder)? updates]) =>
      (PrecursorTestInputBuilder()..update(updates))._build();

  _$PrecursorTestInput._(
      {required this.name,
      this.statement,
      this.antecedent,
      this.consequent,
      this.minLag,
      required this.maxLag,
      this.spatial,
      this.dedupWindow})
      : super._();
  @override
  PrecursorTestInput rebuild(
          void Function(PrecursorTestInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorTestInputBuilder toBuilder() =>
      PrecursorTestInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestInput &&
        name == other.name &&
        statement == other.statement &&
        antecedent == other.antecedent &&
        consequent == other.consequent &&
        minLag == other.minLag &&
        maxLag == other.maxLag &&
        spatial == other.spatial &&
        dedupWindow == other.dedupWindow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, antecedent.hashCode);
    _$hash = $jc(_$hash, consequent.hashCode);
    _$hash = $jc(_$hash, minLag.hashCode);
    _$hash = $jc(_$hash, maxLag.hashCode);
    _$hash = $jc(_$hash, spatial.hashCode);
    _$hash = $jc(_$hash, dedupWindow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTestInput')
          ..add('name', name)
          ..add('statement', statement)
          ..add('antecedent', antecedent)
          ..add('consequent', consequent)
          ..add('minLag', minLag)
          ..add('maxLag', maxLag)
          ..add('spatial', spatial)
          ..add('dedupWindow', dedupWindow))
        .toString();
  }
}

class PrecursorTestInputBuilder
    implements Builder<PrecursorTestInput, PrecursorTestInputBuilder> {
  _$PrecursorTestInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  JsonObject? _antecedent;
  JsonObject? get antecedent => _$this._antecedent;
  set antecedent(JsonObject? antecedent) => _$this._antecedent = antecedent;

  JsonObject? _consequent;
  JsonObject? get consequent => _$this._consequent;
  set consequent(JsonObject? consequent) => _$this._consequent = consequent;

  String? _minLag;
  String? get minLag => _$this._minLag;
  set minLag(String? minLag) => _$this._minLag = minLag;

  String? _maxLag;
  String? get maxLag => _$this._maxLag;
  set maxLag(String? maxLag) => _$this._maxLag = maxLag;

  JsonObject? _spatial;
  JsonObject? get spatial => _$this._spatial;
  set spatial(JsonObject? spatial) => _$this._spatial = spatial;

  String? _dedupWindow;
  String? get dedupWindow => _$this._dedupWindow;
  set dedupWindow(String? dedupWindow) => _$this._dedupWindow = dedupWindow;

  PrecursorTestInputBuilder() {
    PrecursorTestInput._defaults(this);
  }

  PrecursorTestInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _statement = $v.statement;
      _antecedent = $v.antecedent;
      _consequent = $v.consequent;
      _minLag = $v.minLag;
      _maxLag = $v.maxLag;
      _spatial = $v.spatial;
      _dedupWindow = $v.dedupWindow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestInput other) {
    _$v = other as _$PrecursorTestInput;
  }

  @override
  void update(void Function(PrecursorTestInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestInput build() => _build();

  _$PrecursorTestInput _build() {
    final _$result = _$v ??
        _$PrecursorTestInput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PrecursorTestInput', 'name'),
          statement: statement,
          antecedent: antecedent,
          consequent: consequent,
          minLag: minLag,
          maxLag: BuiltValueNullFieldError.checkNotNull(
              maxLag, r'PrecursorTestInput', 'maxLag'),
          spatial: spatial,
          dedupWindow: dedupWindow,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
