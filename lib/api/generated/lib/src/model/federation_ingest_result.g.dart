// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_ingest_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederationIngestResult extends FederationIngestResult {
  @override
  final int accepted;
  @override
  final int duplicates;
  @override
  final FederationIngestResultDropped dropped;

  factory _$FederationIngestResult(
          [void Function(FederationIngestResultBuilder)? updates]) =>
      (FederationIngestResultBuilder()..update(updates))._build();

  _$FederationIngestResult._(
      {required this.accepted, required this.duplicates, required this.dropped})
      : super._();
  @override
  FederationIngestResult rebuild(
          void Function(FederationIngestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FederationIngestResultBuilder toBuilder() =>
      FederationIngestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederationIngestResult &&
        accepted == other.accepted &&
        duplicates == other.duplicates &&
        dropped == other.dropped;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, duplicates.hashCode);
    _$hash = $jc(_$hash, dropped.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FederationIngestResult')
          ..add('accepted', accepted)
          ..add('duplicates', duplicates)
          ..add('dropped', dropped))
        .toString();
  }
}

class FederationIngestResultBuilder
    implements Builder<FederationIngestResult, FederationIngestResultBuilder> {
  _$FederationIngestResult? _$v;

  int? _accepted;
  int? get accepted => _$this._accepted;
  set accepted(int? accepted) => _$this._accepted = accepted;

  int? _duplicates;
  int? get duplicates => _$this._duplicates;
  set duplicates(int? duplicates) => _$this._duplicates = duplicates;

  FederationIngestResultDroppedBuilder? _dropped;
  FederationIngestResultDroppedBuilder get dropped =>
      _$this._dropped ??= FederationIngestResultDroppedBuilder();
  set dropped(FederationIngestResultDroppedBuilder? dropped) =>
      _$this._dropped = dropped;

  FederationIngestResultBuilder() {
    FederationIngestResult._defaults(this);
  }

  FederationIngestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepted = $v.accepted;
      _duplicates = $v.duplicates;
      _dropped = $v.dropped.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederationIngestResult other) {
    _$v = other as _$FederationIngestResult;
  }

  @override
  void update(void Function(FederationIngestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederationIngestResult build() => _build();

  _$FederationIngestResult _build() {
    _$FederationIngestResult _$result;
    try {
      _$result = _$v ??
          _$FederationIngestResult._(
            accepted: BuiltValueNullFieldError.checkNotNull(
                accepted, r'FederationIngestResult', 'accepted'),
            duplicates: BuiltValueNullFieldError.checkNotNull(
                duplicates, r'FederationIngestResult', 'duplicates'),
            dropped: dropped.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dropped';
        dropped.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FederationIngestResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
