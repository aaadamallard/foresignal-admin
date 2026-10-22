// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalSourceCreated extends ExternalSourceCreated {
  @override
  final ExternalSource source_;
  @override
  final String ingestKey;

  factory _$ExternalSourceCreated(
          [void Function(ExternalSourceCreatedBuilder)? updates]) =>
      (ExternalSourceCreatedBuilder()..update(updates))._build();

  _$ExternalSourceCreated._({required this.source_, required this.ingestKey})
      : super._();
  @override
  ExternalSourceCreated rebuild(
          void Function(ExternalSourceCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalSourceCreatedBuilder toBuilder() =>
      ExternalSourceCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSourceCreated &&
        source_ == other.source_ &&
        ingestKey == other.ingestKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, ingestKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalSourceCreated')
          ..add('source_', source_)
          ..add('ingestKey', ingestKey))
        .toString();
  }
}

class ExternalSourceCreatedBuilder
    implements Builder<ExternalSourceCreated, ExternalSourceCreatedBuilder> {
  _$ExternalSourceCreated? _$v;

  ExternalSourceBuilder? _source_;
  ExternalSourceBuilder get source_ =>
      _$this._source_ ??= ExternalSourceBuilder();
  set source_(ExternalSourceBuilder? source_) => _$this._source_ = source_;

  String? _ingestKey;
  String? get ingestKey => _$this._ingestKey;
  set ingestKey(String? ingestKey) => _$this._ingestKey = ingestKey;

  ExternalSourceCreatedBuilder() {
    ExternalSourceCreated._defaults(this);
  }

  ExternalSourceCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_.toBuilder();
      _ingestKey = $v.ingestKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSourceCreated other) {
    _$v = other as _$ExternalSourceCreated;
  }

  @override
  void update(void Function(ExternalSourceCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSourceCreated build() => _build();

  _$ExternalSourceCreated _build() {
    _$ExternalSourceCreated _$result;
    try {
      _$result = _$v ??
          _$ExternalSourceCreated._(
            source_: source_.build(),
            ingestKey: BuiltValueNullFieldError.checkNotNull(
                ingestKey, r'ExternalSourceCreated', 'ingestKey'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source_';
        source_.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExternalSourceCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
