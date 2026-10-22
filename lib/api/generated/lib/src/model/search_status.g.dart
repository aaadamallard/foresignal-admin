// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchStatus extends SearchStatus {
  @override
  final bool semanticEnabled;
  @override
  final String? reason;
  @override
  final String? model;
  @override
  final int? dimensions;
  @override
  final int documents;
  @override
  final int? backlog;
  @override
  final bool? reindexing;
  @override
  final String? activeModel;
  @override
  final SearchReindexState? reindex;
  @override
  final bool? degraded;

  factory _$SearchStatus([void Function(SearchStatusBuilder)? updates]) =>
      (SearchStatusBuilder()..update(updates))._build();

  _$SearchStatus._({
    required this.semanticEnabled,
    this.reason,
    this.model,
    this.dimensions,
    required this.documents,
    this.backlog,
    this.reindexing,
    this.activeModel,
    this.reindex,
    this.degraded,
  }) : super._();
  @override
  SearchStatus rebuild(void Function(SearchStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchStatusBuilder toBuilder() => SearchStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchStatus &&
        semanticEnabled == other.semanticEnabled &&
        reason == other.reason &&
        model == other.model &&
        dimensions == other.dimensions &&
        documents == other.documents &&
        backlog == other.backlog &&
        reindexing == other.reindexing &&
        activeModel == other.activeModel &&
        reindex == other.reindex &&
        degraded == other.degraded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, semanticEnabled.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, dimensions.hashCode);
    _$hash = $jc(_$hash, documents.hashCode);
    _$hash = $jc(_$hash, backlog.hashCode);
    _$hash = $jc(_$hash, reindexing.hashCode);
    _$hash = $jc(_$hash, activeModel.hashCode);
    _$hash = $jc(_$hash, reindex.hashCode);
    _$hash = $jc(_$hash, degraded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchStatus')
          ..add('semanticEnabled', semanticEnabled)
          ..add('reason', reason)
          ..add('model', model)
          ..add('dimensions', dimensions)
          ..add('documents', documents)
          ..add('backlog', backlog)
          ..add('reindexing', reindexing)
          ..add('activeModel', activeModel)
          ..add('reindex', reindex)
          ..add('degraded', degraded))
        .toString();
  }
}

class SearchStatusBuilder
    implements Builder<SearchStatus, SearchStatusBuilder> {
  _$SearchStatus? _$v;

  bool? _semanticEnabled;
  bool? get semanticEnabled => _$this._semanticEnabled;
  set semanticEnabled(bool? semanticEnabled) =>
      _$this._semanticEnabled = semanticEnabled;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  int? _dimensions;
  int? get dimensions => _$this._dimensions;
  set dimensions(int? dimensions) => _$this._dimensions = dimensions;

  int? _documents;
  int? get documents => _$this._documents;
  set documents(int? documents) => _$this._documents = documents;

  int? _backlog;
  int? get backlog => _$this._backlog;
  set backlog(int? backlog) => _$this._backlog = backlog;

  bool? _reindexing;
  bool? get reindexing => _$this._reindexing;
  set reindexing(bool? reindexing) => _$this._reindexing = reindexing;

  String? _activeModel;
  String? get activeModel => _$this._activeModel;
  set activeModel(String? activeModel) => _$this._activeModel = activeModel;

  SearchReindexStateBuilder? _reindex;
  SearchReindexStateBuilder get reindex =>
      _$this._reindex ??= SearchReindexStateBuilder();
  set reindex(SearchReindexStateBuilder? reindex) => _$this._reindex = reindex;

  bool? _degraded;
  bool? get degraded => _$this._degraded;
  set degraded(bool? degraded) => _$this._degraded = degraded;

  SearchStatusBuilder() {
    SearchStatus._defaults(this);
  }

  SearchStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _semanticEnabled = $v.semanticEnabled;
      _reason = $v.reason;
      _model = $v.model;
      _dimensions = $v.dimensions;
      _documents = $v.documents;
      _backlog = $v.backlog;
      _reindexing = $v.reindexing;
      _activeModel = $v.activeModel;
      _reindex = $v.reindex?.toBuilder();
      _degraded = $v.degraded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchStatus other) {
    _$v = other as _$SearchStatus;
  }

  @override
  void update(void Function(SearchStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchStatus build() => _build();

  _$SearchStatus _build() {
    _$SearchStatus _$result;
    try {
      _$result =
          _$v ??
          _$SearchStatus._(
            semanticEnabled: BuiltValueNullFieldError.checkNotNull(
              semanticEnabled,
              r'SearchStatus',
              'semanticEnabled',
            ),
            reason: reason,
            model: model,
            dimensions: dimensions,
            documents: BuiltValueNullFieldError.checkNotNull(
              documents,
              r'SearchStatus',
              'documents',
            ),
            backlog: backlog,
            reindexing: reindexing,
            activeModel: activeModel,
            reindex: _reindex?.build(),
            degraded: degraded,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reindex';
        _reindex?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SearchStatus',
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
