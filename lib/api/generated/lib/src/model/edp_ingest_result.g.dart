// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_ingest_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpIngestResult extends EdpIngestResult {
  @override
  final int accepted;
  @override
  final BuiltList<EdpItemRejection> rejected;
  @override
  final IngestOutcome? outcome;

  factory _$EdpIngestResult([void Function(EdpIngestResultBuilder)? updates]) =>
      (EdpIngestResultBuilder()..update(updates))._build();

  _$EdpIngestResult._(
      {required this.accepted, required this.rejected, this.outcome})
      : super._();
  @override
  EdpIngestResult rebuild(void Function(EdpIngestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpIngestResultBuilder toBuilder() => EdpIngestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpIngestResult &&
        accepted == other.accepted &&
        rejected == other.rejected &&
        outcome == other.outcome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpIngestResult')
          ..add('accepted', accepted)
          ..add('rejected', rejected)
          ..add('outcome', outcome))
        .toString();
  }
}

class EdpIngestResultBuilder
    implements Builder<EdpIngestResult, EdpIngestResultBuilder> {
  _$EdpIngestResult? _$v;

  int? _accepted;
  int? get accepted => _$this._accepted;
  set accepted(int? accepted) => _$this._accepted = accepted;

  ListBuilder<EdpItemRejection>? _rejected;
  ListBuilder<EdpItemRejection> get rejected =>
      _$this._rejected ??= ListBuilder<EdpItemRejection>();
  set rejected(ListBuilder<EdpItemRejection>? rejected) =>
      _$this._rejected = rejected;

  IngestOutcomeBuilder? _outcome;
  IngestOutcomeBuilder get outcome =>
      _$this._outcome ??= IngestOutcomeBuilder();
  set outcome(IngestOutcomeBuilder? outcome) => _$this._outcome = outcome;

  EdpIngestResultBuilder() {
    EdpIngestResult._defaults(this);
  }

  EdpIngestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepted = $v.accepted;
      _rejected = $v.rejected.toBuilder();
      _outcome = $v.outcome?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpIngestResult other) {
    _$v = other as _$EdpIngestResult;
  }

  @override
  void update(void Function(EdpIngestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpIngestResult build() => _build();

  _$EdpIngestResult _build() {
    _$EdpIngestResult _$result;
    try {
      _$result = _$v ??
          _$EdpIngestResult._(
            accepted: BuiltValueNullFieldError.checkNotNull(
                accepted, r'EdpIngestResult', 'accepted'),
            rejected: rejected.build(),
            outcome: _outcome?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rejected';
        rejected.build();
        _$failedField = 'outcome';
        _outcome?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpIngestResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
