// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_changes_new_members.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationChangesNewMembers extends SituationChangesNewMembers {
  @override
  final int total;
  @override
  final BuiltMap<String, int> byFamily;
  @override
  final BuiltMap<String, int>? byType;

  factory _$SituationChangesNewMembers([
    void Function(SituationChangesNewMembersBuilder)? updates,
  ]) => (SituationChangesNewMembersBuilder()..update(updates))._build();

  _$SituationChangesNewMembers._({
    required this.total,
    required this.byFamily,
    this.byType,
  }) : super._();
  @override
  SituationChangesNewMembers rebuild(
    void Function(SituationChangesNewMembersBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationChangesNewMembersBuilder toBuilder() =>
      SituationChangesNewMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationChangesNewMembers &&
        total == other.total &&
        byFamily == other.byFamily &&
        byType == other.byType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, byFamily.hashCode);
    _$hash = $jc(_$hash, byType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationChangesNewMembers')
          ..add('total', total)
          ..add('byFamily', byFamily)
          ..add('byType', byType))
        .toString();
  }
}

class SituationChangesNewMembersBuilder
    implements
        Builder<SituationChangesNewMembers, SituationChangesNewMembersBuilder> {
  _$SituationChangesNewMembers? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  MapBuilder<String, int>? _byFamily;
  MapBuilder<String, int> get byFamily =>
      _$this._byFamily ??= MapBuilder<String, int>();
  set byFamily(MapBuilder<String, int>? byFamily) =>
      _$this._byFamily = byFamily;

  MapBuilder<String, int>? _byType;
  MapBuilder<String, int> get byType =>
      _$this._byType ??= MapBuilder<String, int>();
  set byType(MapBuilder<String, int>? byType) => _$this._byType = byType;

  SituationChangesNewMembersBuilder() {
    SituationChangesNewMembers._defaults(this);
  }

  SituationChangesNewMembersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _byFamily = $v.byFamily.toBuilder();
      _byType = $v.byType?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationChangesNewMembers other) {
    _$v = other as _$SituationChangesNewMembers;
  }

  @override
  void update(void Function(SituationChangesNewMembersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationChangesNewMembers build() => _build();

  _$SituationChangesNewMembers _build() {
    _$SituationChangesNewMembers _$result;
    try {
      _$result =
          _$v ??
          _$SituationChangesNewMembers._(
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'SituationChangesNewMembers',
              'total',
            ),
            byFamily: byFamily.build(),
            byType: _byType?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byFamily';
        byFamily.build();
        _$failedField = 'byType';
        _byType?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationChangesNewMembers',
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
