// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemInfoSearchReindexStateEnum _$systemInfoSearchReindexStateEnum_idle =
    const SystemInfoSearchReindexStateEnum._('idle');
const SystemInfoSearchReindexStateEnum
    _$systemInfoSearchReindexStateEnum_backfilling =
    const SystemInfoSearchReindexStateEnum._('backfilling');
const SystemInfoSearchReindexStateEnum
    _$systemInfoSearchReindexStateEnum_indexing =
    const SystemInfoSearchReindexStateEnum._('indexing');
const SystemInfoSearchReindexStateEnum
    _$systemInfoSearchReindexStateEnum_swapping =
    const SystemInfoSearchReindexStateEnum._('swapping');

SystemInfoSearchReindexStateEnum _$systemInfoSearchReindexStateEnumValueOf(
    String name) {
  switch (name) {
    case 'idle':
      return _$systemInfoSearchReindexStateEnum_idle;
    case 'backfilling':
      return _$systemInfoSearchReindexStateEnum_backfilling;
    case 'indexing':
      return _$systemInfoSearchReindexStateEnum_indexing;
    case 'swapping':
      return _$systemInfoSearchReindexStateEnum_swapping;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SystemInfoSearchReindexStateEnum>
    _$systemInfoSearchReindexStateEnumValues = BuiltSet<
        SystemInfoSearchReindexStateEnum>(const <SystemInfoSearchReindexStateEnum>[
  _$systemInfoSearchReindexStateEnum_idle,
  _$systemInfoSearchReindexStateEnum_backfilling,
  _$systemInfoSearchReindexStateEnum_indexing,
  _$systemInfoSearchReindexStateEnum_swapping,
]);

Serializer<SystemInfoSearchReindexStateEnum>
    _$systemInfoSearchReindexStateEnumSerializer =
    _$SystemInfoSearchReindexStateEnumSerializer();

class _$SystemInfoSearchReindexStateEnumSerializer
    implements PrimitiveSerializer<SystemInfoSearchReindexStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'idle': 'idle',
    'backfilling': 'backfilling',
    'indexing': 'indexing',
    'swapping': 'swapping',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'idle': 'idle',
    'backfilling': 'backfilling',
    'indexing': 'indexing',
    'swapping': 'swapping',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemInfoSearchReindexStateEnum];
  @override
  final String wireName = 'SystemInfoSearchReindexStateEnum';

  @override
  Object serialize(
          Serializers serializers, SystemInfoSearchReindexStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SystemInfoSearchReindexStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SystemInfoSearchReindexStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SystemInfoSearch extends SystemInfoSearch {
  @override
  final bool? semanticEnabled;
  @override
  final String? reason;
  @override
  final int? documents;
  @override
  final int? backlog;
  @override
  final String? activeModel;
  @override
  final SystemInfoSearchReindexStateEnum? reindexState;

  factory _$SystemInfoSearch(
          [void Function(SystemInfoSearchBuilder)? updates]) =>
      (SystemInfoSearchBuilder()..update(updates))._build();

  _$SystemInfoSearch._(
      {this.semanticEnabled,
      this.reason,
      this.documents,
      this.backlog,
      this.activeModel,
      this.reindexState})
      : super._();
  @override
  SystemInfoSearch rebuild(void Function(SystemInfoSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoSearchBuilder toBuilder() =>
      SystemInfoSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoSearch &&
        semanticEnabled == other.semanticEnabled &&
        reason == other.reason &&
        documents == other.documents &&
        backlog == other.backlog &&
        activeModel == other.activeModel &&
        reindexState == other.reindexState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, semanticEnabled.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, documents.hashCode);
    _$hash = $jc(_$hash, backlog.hashCode);
    _$hash = $jc(_$hash, activeModel.hashCode);
    _$hash = $jc(_$hash, reindexState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoSearch')
          ..add('semanticEnabled', semanticEnabled)
          ..add('reason', reason)
          ..add('documents', documents)
          ..add('backlog', backlog)
          ..add('activeModel', activeModel)
          ..add('reindexState', reindexState))
        .toString();
  }
}

class SystemInfoSearchBuilder
    implements Builder<SystemInfoSearch, SystemInfoSearchBuilder> {
  _$SystemInfoSearch? _$v;

  bool? _semanticEnabled;
  bool? get semanticEnabled => _$this._semanticEnabled;
  set semanticEnabled(bool? semanticEnabled) =>
      _$this._semanticEnabled = semanticEnabled;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  int? _documents;
  int? get documents => _$this._documents;
  set documents(int? documents) => _$this._documents = documents;

  int? _backlog;
  int? get backlog => _$this._backlog;
  set backlog(int? backlog) => _$this._backlog = backlog;

  String? _activeModel;
  String? get activeModel => _$this._activeModel;
  set activeModel(String? activeModel) => _$this._activeModel = activeModel;

  SystemInfoSearchReindexStateEnum? _reindexState;
  SystemInfoSearchReindexStateEnum? get reindexState => _$this._reindexState;
  set reindexState(SystemInfoSearchReindexStateEnum? reindexState) =>
      _$this._reindexState = reindexState;

  SystemInfoSearchBuilder() {
    SystemInfoSearch._defaults(this);
  }

  SystemInfoSearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _semanticEnabled = $v.semanticEnabled;
      _reason = $v.reason;
      _documents = $v.documents;
      _backlog = $v.backlog;
      _activeModel = $v.activeModel;
      _reindexState = $v.reindexState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoSearch other) {
    _$v = other as _$SystemInfoSearch;
  }

  @override
  void update(void Function(SystemInfoSearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoSearch build() => _build();

  _$SystemInfoSearch _build() {
    final _$result = _$v ??
        _$SystemInfoSearch._(
          semanticEnabled: semanticEnabled,
          reason: reason,
          documents: documents,
          backlog: backlog,
          activeModel: activeModel,
          reindexState: reindexState,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
