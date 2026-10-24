// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue_external_results_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCueExternalResultsInner extends SocialCueExternalResultsInner {
  @override
  final String sourceId;
  @override
  final int queries;
  @override
  final int items;
  @override
  final String? error;

  factory _$SocialCueExternalResultsInner([
    void Function(SocialCueExternalResultsInnerBuilder)? updates,
  ]) => (SocialCueExternalResultsInnerBuilder()..update(updates))._build();

  _$SocialCueExternalResultsInner._({
    required this.sourceId,
    required this.queries,
    required this.items,
    this.error,
  }) : super._();
  @override
  SocialCueExternalResultsInner rebuild(
    void Function(SocialCueExternalResultsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialCueExternalResultsInnerBuilder toBuilder() =>
      SocialCueExternalResultsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCueExternalResultsInner &&
        sourceId == other.sourceId &&
        queries == other.queries &&
        items == other.items &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, queries.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCueExternalResultsInner')
          ..add('sourceId', sourceId)
          ..add('queries', queries)
          ..add('items', items)
          ..add('error', error))
        .toString();
  }
}

class SocialCueExternalResultsInnerBuilder
    implements
        Builder<
          SocialCueExternalResultsInner,
          SocialCueExternalResultsInnerBuilder
        > {
  _$SocialCueExternalResultsInner? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  int? _queries;
  int? get queries => _$this._queries;
  set queries(int? queries) => _$this._queries = queries;

  int? _items;
  int? get items => _$this._items;
  set items(int? items) => _$this._items = items;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  SocialCueExternalResultsInnerBuilder() {
    SocialCueExternalResultsInner._defaults(this);
  }

  SocialCueExternalResultsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _queries = $v.queries;
      _items = $v.items;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCueExternalResultsInner other) {
    _$v = other as _$SocialCueExternalResultsInner;
  }

  @override
  void update(void Function(SocialCueExternalResultsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCueExternalResultsInner build() => _build();

  _$SocialCueExternalResultsInner _build() {
    final _$result =
        _$v ??
        _$SocialCueExternalResultsInner._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'SocialCueExternalResultsInner',
            'sourceId',
          ),
          queries: BuiltValueNullFieldError.checkNotNull(
            queries,
            r'SocialCueExternalResultsInner',
            'queries',
          ),
          items: BuiltValueNullFieldError.checkNotNull(
            items,
            r'SocialCueExternalResultsInner',
            'items',
          ),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
