// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_core_sources_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableCoreSourcesResult extends EnableCoreSourcesResult {
  @override
  final BuiltList<String> enabled;
  @override
  final int count;
  @override
  final int skipped;

  factory _$EnableCoreSourcesResult([
    void Function(EnableCoreSourcesResultBuilder)? updates,
  ]) => (EnableCoreSourcesResultBuilder()..update(updates))._build();

  _$EnableCoreSourcesResult._({
    required this.enabled,
    required this.count,
    required this.skipped,
  }) : super._();
  @override
  EnableCoreSourcesResult rebuild(
    void Function(EnableCoreSourcesResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EnableCoreSourcesResultBuilder toBuilder() =>
      EnableCoreSourcesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableCoreSourcesResult &&
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
    return (newBuiltValueToStringHelper(r'EnableCoreSourcesResult')
          ..add('enabled', enabled)
          ..add('count', count)
          ..add('skipped', skipped))
        .toString();
  }
}

class EnableCoreSourcesResultBuilder
    implements
        Builder<EnableCoreSourcesResult, EnableCoreSourcesResultBuilder> {
  _$EnableCoreSourcesResult? _$v;

  ListBuilder<String>? _enabled;
  ListBuilder<String> get enabled => _$this._enabled ??= ListBuilder<String>();
  set enabled(ListBuilder<String>? enabled) => _$this._enabled = enabled;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  EnableCoreSourcesResultBuilder() {
    EnableCoreSourcesResult._defaults(this);
  }

  EnableCoreSourcesResultBuilder get _$this {
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
  void replace(EnableCoreSourcesResult other) {
    _$v = other as _$EnableCoreSourcesResult;
  }

  @override
  void update(void Function(EnableCoreSourcesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableCoreSourcesResult build() => _build();

  _$EnableCoreSourcesResult _build() {
    _$EnableCoreSourcesResult _$result;
    try {
      _$result =
          _$v ??
          _$EnableCoreSourcesResult._(
            enabled: enabled.build(),
            count: BuiltValueNullFieldError.checkNotNull(
              count,
              r'EnableCoreSourcesResult',
              'count',
            ),
            skipped: BuiltValueNullFieldError.checkNotNull(
              skipped,
              r'EnableCoreSourcesResult',
              'skipped',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enabled';
        enabled.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EnableCoreSourcesResult',
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
