// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_source_view_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSourceViewUpdate extends UserSourceViewUpdate {
  @override
  final BuiltList<UserSourcePref> sources;

  factory _$UserSourceViewUpdate([
    void Function(UserSourceViewUpdateBuilder)? updates,
  ]) => (UserSourceViewUpdateBuilder()..update(updates))._build();

  _$UserSourceViewUpdate._({required this.sources}) : super._();
  @override
  UserSourceViewUpdate rebuild(
    void Function(UserSourceViewUpdateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserSourceViewUpdateBuilder toBuilder() =>
      UserSourceViewUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSourceViewUpdate && sources == other.sources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UserSourceViewUpdate',
    )..add('sources', sources)).toString();
  }
}

class UserSourceViewUpdateBuilder
    implements Builder<UserSourceViewUpdate, UserSourceViewUpdateBuilder> {
  _$UserSourceViewUpdate? _$v;

  ListBuilder<UserSourcePref>? _sources;
  ListBuilder<UserSourcePref> get sources =>
      _$this._sources ??= ListBuilder<UserSourcePref>();
  set sources(ListBuilder<UserSourcePref>? sources) =>
      _$this._sources = sources;

  UserSourceViewUpdateBuilder() {
    UserSourceViewUpdate._defaults(this);
  }

  UserSourceViewUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSourceViewUpdate other) {
    _$v = other as _$UserSourceViewUpdate;
  }

  @override
  void update(void Function(UserSourceViewUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSourceViewUpdate build() => _build();

  _$UserSourceViewUpdate _build() {
    _$UserSourceViewUpdate _$result;
    try {
      _$result = _$v ?? _$UserSourceViewUpdate._(sources: sources.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserSourceViewUpdate',
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
