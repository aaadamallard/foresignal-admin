// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_source_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSourceView extends UserSourceView {
  @override
  final BuiltList<UserSourcePref> sources;

  factory _$UserSourceView([void Function(UserSourceViewBuilder)? updates]) =>
      (UserSourceViewBuilder()..update(updates))._build();

  _$UserSourceView._({required this.sources}) : super._();
  @override
  UserSourceView rebuild(void Function(UserSourceViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSourceViewBuilder toBuilder() => UserSourceViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSourceView && sources == other.sources;
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
      r'UserSourceView',
    )..add('sources', sources)).toString();
  }
}

class UserSourceViewBuilder
    implements Builder<UserSourceView, UserSourceViewBuilder> {
  _$UserSourceView? _$v;

  ListBuilder<UserSourcePref>? _sources;
  ListBuilder<UserSourcePref> get sources =>
      _$this._sources ??= ListBuilder<UserSourcePref>();
  set sources(ListBuilder<UserSourcePref>? sources) =>
      _$this._sources = sources;

  UserSourceViewBuilder() {
    UserSourceView._defaults(this);
  }

  UserSourceViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSourceView other) {
    _$v = other as _$UserSourceView;
  }

  @override
  void update(void Function(UserSourceViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSourceView build() => _build();

  _$UserSourceView _build() {
    _$UserSourceView _$result;
    try {
      _$result = _$v ?? _$UserSourceView._(sources: sources.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserSourceView',
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
