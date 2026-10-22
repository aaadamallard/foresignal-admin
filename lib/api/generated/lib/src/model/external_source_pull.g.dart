// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source_pull.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalSourcePull extends ExternalSourcePull {
  @override
  final String? cursor;
  @override
  final DateTime? lastPollAt;
  @override
  final String? lastError;

  factory _$ExternalSourcePull([
    void Function(ExternalSourcePullBuilder)? updates,
  ]) => (ExternalSourcePullBuilder()..update(updates))._build();

  _$ExternalSourcePull._({this.cursor, this.lastPollAt, this.lastError})
    : super._();
  @override
  ExternalSourcePull rebuild(
    void Function(ExternalSourcePullBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalSourcePullBuilder toBuilder() =>
      ExternalSourcePullBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSourcePull &&
        cursor == other.cursor &&
        lastPollAt == other.lastPollAt &&
        lastError == other.lastError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cursor.hashCode);
    _$hash = $jc(_$hash, lastPollAt.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalSourcePull')
          ..add('cursor', cursor)
          ..add('lastPollAt', lastPollAt)
          ..add('lastError', lastError))
        .toString();
  }
}

class ExternalSourcePullBuilder
    implements Builder<ExternalSourcePull, ExternalSourcePullBuilder> {
  _$ExternalSourcePull? _$v;

  String? _cursor;
  String? get cursor => _$this._cursor;
  set cursor(String? cursor) => _$this._cursor = cursor;

  DateTime? _lastPollAt;
  DateTime? get lastPollAt => _$this._lastPollAt;
  set lastPollAt(DateTime? lastPollAt) => _$this._lastPollAt = lastPollAt;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  ExternalSourcePullBuilder() {
    ExternalSourcePull._defaults(this);
  }

  ExternalSourcePullBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cursor = $v.cursor;
      _lastPollAt = $v.lastPollAt;
      _lastError = $v.lastError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSourcePull other) {
    _$v = other as _$ExternalSourcePull;
  }

  @override
  void update(void Function(ExternalSourcePullBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSourcePull build() => _build();

  _$ExternalSourcePull _build() {
    final _$result =
        _$v ??
        _$ExternalSourcePull._(
          cursor: cursor,
          lastPollAt: lastPollAt,
          lastError: lastError,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
