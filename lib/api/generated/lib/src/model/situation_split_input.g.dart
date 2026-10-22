// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_split_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationSplitInput extends SituationSplitInput {
  @override
  final BuiltList<String> memberIds;
  @override
  final String title;
  @override
  final SituationTheme? theme;
  @override
  final int? version;

  factory _$SituationSplitInput(
          [void Function(SituationSplitInputBuilder)? updates]) =>
      (SituationSplitInputBuilder()..update(updates))._build();

  _$SituationSplitInput._(
      {required this.memberIds, required this.title, this.theme, this.version})
      : super._();
  @override
  SituationSplitInput rebuild(
          void Function(SituationSplitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationSplitInputBuilder toBuilder() =>
      SituationSplitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationSplitInput &&
        memberIds == other.memberIds &&
        title == other.title &&
        theme == other.theme &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberIds.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationSplitInput')
          ..add('memberIds', memberIds)
          ..add('title', title)
          ..add('theme', theme)
          ..add('version', version))
        .toString();
  }
}

class SituationSplitInputBuilder
    implements Builder<SituationSplitInput, SituationSplitInputBuilder> {
  _$SituationSplitInput? _$v;

  ListBuilder<String>? _memberIds;
  ListBuilder<String> get memberIds =>
      _$this._memberIds ??= ListBuilder<String>();
  set memberIds(ListBuilder<String>? memberIds) =>
      _$this._memberIds = memberIds;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SituationTheme? _theme;
  SituationTheme? get theme => _$this._theme;
  set theme(SituationTheme? theme) => _$this._theme = theme;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  SituationSplitInputBuilder() {
    SituationSplitInput._defaults(this);
  }

  SituationSplitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberIds = $v.memberIds.toBuilder();
      _title = $v.title;
      _theme = $v.theme;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationSplitInput other) {
    _$v = other as _$SituationSplitInput;
  }

  @override
  void update(void Function(SituationSplitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationSplitInput build() => _build();

  _$SituationSplitInput _build() {
    _$SituationSplitInput _$result;
    try {
      _$result = _$v ??
          _$SituationSplitInput._(
            memberIds: memberIds.build(),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SituationSplitInput', 'title'),
            theme: theme,
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memberIds';
        memberIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationSplitInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
