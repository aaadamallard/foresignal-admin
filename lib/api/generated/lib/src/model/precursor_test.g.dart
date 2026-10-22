// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorTest extends PrecursorTest {
  @override
  final String id;
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
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PrecursorTest([void Function(PrecursorTestBuilder)? updates]) =>
      (PrecursorTestBuilder()..update(updates))._build();

  _$PrecursorTest._({
    required this.id,
    required this.name,
    this.statement,
    this.antecedent,
    this.consequent,
    this.minLag,
    required this.maxLag,
    this.spatial,
    this.dedupWindow,
    this.createdBy,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  PrecursorTest rebuild(void Function(PrecursorTestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorTestBuilder toBuilder() => PrecursorTestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTest &&
        id == other.id &&
        name == other.name &&
        statement == other.statement &&
        antecedent == other.antecedent &&
        consequent == other.consequent &&
        minLag == other.minLag &&
        maxLag == other.maxLag &&
        spatial == other.spatial &&
        dedupWindow == other.dedupWindow &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, antecedent.hashCode);
    _$hash = $jc(_$hash, consequent.hashCode);
    _$hash = $jc(_$hash, minLag.hashCode);
    _$hash = $jc(_$hash, maxLag.hashCode);
    _$hash = $jc(_$hash, spatial.hashCode);
    _$hash = $jc(_$hash, dedupWindow.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTest')
          ..add('id', id)
          ..add('name', name)
          ..add('statement', statement)
          ..add('antecedent', antecedent)
          ..add('consequent', consequent)
          ..add('minLag', minLag)
          ..add('maxLag', maxLag)
          ..add('spatial', spatial)
          ..add('dedupWindow', dedupWindow)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PrecursorTestBuilder
    implements Builder<PrecursorTest, PrecursorTestBuilder> {
  _$PrecursorTest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PrecursorTestBuilder() {
    PrecursorTest._defaults(this);
  }

  PrecursorTestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _statement = $v.statement;
      _antecedent = $v.antecedent;
      _consequent = $v.consequent;
      _minLag = $v.minLag;
      _maxLag = $v.maxLag;
      _spatial = $v.spatial;
      _dedupWindow = $v.dedupWindow;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTest other) {
    _$v = other as _$PrecursorTest;
  }

  @override
  void update(void Function(PrecursorTestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTest build() => _build();

  _$PrecursorTest _build() {
    final _$result =
        _$v ??
        _$PrecursorTest._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'PrecursorTest', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'PrecursorTest',
            'name',
          ),
          statement: statement,
          antecedent: antecedent,
          consequent: consequent,
          minLag: minLag,
          maxLag: BuiltValueNullFieldError.checkNotNull(
            maxLag,
            r'PrecursorTest',
            'maxLag',
          ),
          spatial: spatial,
          dedupWindow: dedupWindow,
          createdBy: createdBy,
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'PrecursorTest',
            'createdAt',
          ),
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
