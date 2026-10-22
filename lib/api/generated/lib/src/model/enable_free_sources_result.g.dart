// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_free_sources_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFreeSourcesResult extends EnableFreeSourcesResult {
  @override
  final BuiltList<String> enabled;
  @override
  final int count;
  @override
  final int skipped;

  factory _$EnableFreeSourcesResult(
          [void Function(EnableFreeSourcesResultBuilder)? updates]) =>
      (EnableFreeSourcesResultBuilder()..update(updates))._build();

  _$EnableFreeSourcesResult._(
      {required this.enabled, required this.count, required this.skipped})
      : super._();
  @override
  EnableFreeSourcesResult rebuild(
          void Function(EnableFreeSourcesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFreeSourcesResultBuilder toBuilder() =>
      EnableFreeSourcesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFreeSourcesResult &&
        enabled == other.enabled &&
        count == other.count &&
        skipped == other.skipped;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnableFreeSourcesResult')
          ..add('enabled', enabled)
          ..add('count', count)
          ..add('skipped', skipped))
        .toString();
  }
}

class EnableFreeSourcesResultBuilder
    implements
        Builder<EnableFreeSourcesResult, EnableFreeSourcesResultBuilder> {
  _$EnableFreeSourcesResult? _$v;

  ListBuilder<String>? _enabled;
  ListBuilder<String> get enabled => _$this._enabled ??= ListBuilder<String>();
  set enabled(ListBuilder<String>? enabled) => _$this._enabled = enabled;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  EnableFreeSourcesResultBuilder() {
    EnableFreeSourcesResult._defaults(this);
  }

  EnableFreeSourcesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled.toBuilder();
      _count = $v.count;
      _skipped = $v.skipped;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableFreeSourcesResult other) {
    _$v = other as _$EnableFreeSourcesResult;
  }

  @override
  void update(void Function(EnableFreeSourcesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFreeSourcesResult build() => _build();

  _$EnableFreeSourcesResult _build() {
    _$EnableFreeSourcesResult _$result;
    try {
      _$result = _$v ??
          _$EnableFreeSourcesResult._(
            enabled: enabled.build(),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'EnableFreeSourcesResult', 'count'),
            skipped: BuiltValueNullFieldError.checkNotNull(
                skipped, r'EnableFreeSourcesResult', 'skipped'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enabled';
        enabled.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EnableFreeSourcesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
