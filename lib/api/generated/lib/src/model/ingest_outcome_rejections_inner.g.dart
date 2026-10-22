// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_outcome_rejections_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestOutcomeRejectionsInner extends IngestOutcomeRejectionsInner {
  @override
  final int? index;
  @override
  final String? externalId;
  @override
  final String? reason;

  factory _$IngestOutcomeRejectionsInner([
    void Function(IngestOutcomeRejectionsInnerBuilder)? updates,
  ]) => (IngestOutcomeRejectionsInnerBuilder()..update(updates))._build();

  _$IngestOutcomeRejectionsInner._({this.index, this.externalId, this.reason})
    : super._();
  @override
  IngestOutcomeRejectionsInner rebuild(
    void Function(IngestOutcomeRejectionsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestOutcomeRejectionsInnerBuilder toBuilder() =>
      IngestOutcomeRejectionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestOutcomeRejectionsInner &&
        index == other.index &&
        externalId == other.externalId &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestOutcomeRejectionsInner')
          ..add('index', index)
          ..add('externalId', externalId)
          ..add('reason', reason))
        .toString();
  }
}

class IngestOutcomeRejectionsInnerBuilder
    implements
        Builder<
          IngestOutcomeRejectionsInner,
          IngestOutcomeRejectionsInnerBuilder
        > {
  _$IngestOutcomeRejectionsInner? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  IngestOutcomeRejectionsInnerBuilder() {
    IngestOutcomeRejectionsInner._defaults(this);
  }

  IngestOutcomeRejectionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _externalId = $v.externalId;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestOutcomeRejectionsInner other) {
    _$v = other as _$IngestOutcomeRejectionsInner;
  }

  @override
  void update(void Function(IngestOutcomeRejectionsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestOutcomeRejectionsInner build() => _build();

  _$IngestOutcomeRejectionsInner _build() {
    final _$result =
        _$v ??
        _$IngestOutcomeRejectionsInner._(
          index: index,
          externalId: externalId,
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
