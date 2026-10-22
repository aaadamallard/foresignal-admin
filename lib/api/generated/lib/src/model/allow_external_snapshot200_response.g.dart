// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allow_external_snapshot200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllowExternalSnapshot200Response
    extends AllowExternalSnapshot200Response {
  @override
  final String snapshotId;
  @override
  final int removed;
  @override
  final IngestOutcome outcome;

  factory _$AllowExternalSnapshot200Response(
          [void Function(AllowExternalSnapshot200ResponseBuilder)? updates]) =>
      (AllowExternalSnapshot200ResponseBuilder()..update(updates))._build();

  _$AllowExternalSnapshot200Response._(
      {required this.snapshotId, required this.removed, required this.outcome})
      : super._();
  @override
  AllowExternalSnapshot200Response rebuild(
          void Function(AllowExternalSnapshot200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllowExternalSnapshot200ResponseBuilder toBuilder() =>
      AllowExternalSnapshot200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllowExternalSnapshot200Response &&
        snapshotId == other.snapshotId &&
        removed == other.removed &&
        outcome == other.outcome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, removed.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllowExternalSnapshot200Response')
          ..add('snapshotId', snapshotId)
          ..add('removed', removed)
          ..add('outcome', outcome))
        .toString();
  }
}

class AllowExternalSnapshot200ResponseBuilder
    implements
        Builder<AllowExternalSnapshot200Response,
            AllowExternalSnapshot200ResponseBuilder> {
  _$AllowExternalSnapshot200Response? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  int? _removed;
  int? get removed => _$this._removed;
  set removed(int? removed) => _$this._removed = removed;

  IngestOutcomeBuilder? _outcome;
  IngestOutcomeBuilder get outcome =>
      _$this._outcome ??= IngestOutcomeBuilder();
  set outcome(IngestOutcomeBuilder? outcome) => _$this._outcome = outcome;

  AllowExternalSnapshot200ResponseBuilder() {
    AllowExternalSnapshot200Response._defaults(this);
  }

  AllowExternalSnapshot200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _removed = $v.removed;
      _outcome = $v.outcome.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllowExternalSnapshot200Response other) {
    _$v = other as _$AllowExternalSnapshot200Response;
  }

  @override
  void update(void Function(AllowExternalSnapshot200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllowExternalSnapshot200Response build() => _build();

  _$AllowExternalSnapshot200Response _build() {
    _$AllowExternalSnapshot200Response _$result;
    try {
      _$result = _$v ??
          _$AllowExternalSnapshot200Response._(
            snapshotId: BuiltValueNullFieldError.checkNotNull(
                snapshotId, r'AllowExternalSnapshot200Response', 'snapshotId'),
            removed: BuiltValueNullFieldError.checkNotNull(
                removed, r'AllowExternalSnapshot200Response', 'removed'),
            outcome: outcome.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'outcome';
        outcome.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AllowExternalSnapshot200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
