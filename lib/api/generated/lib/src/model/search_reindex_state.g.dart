// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_reindex_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SearchReindexStateStateEnum _$searchReindexStateStateEnum_idle =
    const SearchReindexStateStateEnum._('idle');
const SearchReindexStateStateEnum _$searchReindexStateStateEnum_backfilling =
    const SearchReindexStateStateEnum._('backfilling');
const SearchReindexStateStateEnum _$searchReindexStateStateEnum_indexing =
    const SearchReindexStateStateEnum._('indexing');
const SearchReindexStateStateEnum _$searchReindexStateStateEnum_swapping =
    const SearchReindexStateStateEnum._('swapping');

SearchReindexStateStateEnum _$searchReindexStateStateEnumValueOf(String name) {
  switch (name) {
    case 'idle':
      return _$searchReindexStateStateEnum_idle;
    case 'backfilling':
      return _$searchReindexStateStateEnum_backfilling;
    case 'indexing':
      return _$searchReindexStateStateEnum_indexing;
    case 'swapping':
      return _$searchReindexStateStateEnum_swapping;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SearchReindexStateStateEnum>
_$searchReindexStateStateEnumValues =
    BuiltSet<SearchReindexStateStateEnum>(const <SearchReindexStateStateEnum>[
      _$searchReindexStateStateEnum_idle,
      _$searchReindexStateStateEnum_backfilling,
      _$searchReindexStateStateEnum_indexing,
      _$searchReindexStateStateEnum_swapping,
    ]);

Serializer<SearchReindexStateStateEnum>
_$searchReindexStateStateEnumSerializer =
    _$SearchReindexStateStateEnumSerializer();

class _$SearchReindexStateStateEnumSerializer
    implements PrimitiveSerializer<SearchReindexStateStateEnum> {
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
  final Iterable<Type> types = const <Type>[SearchReindexStateStateEnum];
  @override
  final String wireName = 'SearchReindexStateStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    SearchReindexStateStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SearchReindexStateStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SearchReindexStateStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SearchReindexState extends SearchReindexState {
  @override
  final SearchReindexStateStateEnum state;
  @override
  final String? fromModel;
  @override
  final String? toModel;
  @override
  final int? total;
  @override
  final int? done;
  @override
  final num? percent;
  @override
  final num? ratePerMinute;
  @override
  final int? etaSeconds;
  @override
  final DateTime? startedAt;

  factory _$SearchReindexState([
    void Function(SearchReindexStateBuilder)? updates,
  ]) => (SearchReindexStateBuilder()..update(updates))._build();

  _$SearchReindexState._({
    required this.state,
    this.fromModel,
    this.toModel,
    this.total,
    this.done,
    this.percent,
    this.ratePerMinute,
    this.etaSeconds,
    this.startedAt,
  }) : super._();
  @override
  SearchReindexState rebuild(
    void Function(SearchReindexStateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SearchReindexStateBuilder toBuilder() =>
      SearchReindexStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchReindexState &&
        state == other.state &&
        fromModel == other.fromModel &&
        toModel == other.toModel &&
        total == other.total &&
        done == other.done &&
        percent == other.percent &&
        ratePerMinute == other.ratePerMinute &&
        etaSeconds == other.etaSeconds &&
        startedAt == other.startedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, fromModel.hashCode);
    _$hash = $jc(_$hash, toModel.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, done.hashCode);
    _$hash = $jc(_$hash, percent.hashCode);
    _$hash = $jc(_$hash, ratePerMinute.hashCode);
    _$hash = $jc(_$hash, etaSeconds.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchReindexState')
          ..add('state', state)
          ..add('fromModel', fromModel)
          ..add('toModel', toModel)
          ..add('total', total)
          ..add('done', done)
          ..add('percent', percent)
          ..add('ratePerMinute', ratePerMinute)
          ..add('etaSeconds', etaSeconds)
          ..add('startedAt', startedAt))
        .toString();
  }
}

class SearchReindexStateBuilder
    implements Builder<SearchReindexState, SearchReindexStateBuilder> {
  _$SearchReindexState? _$v;

  SearchReindexStateStateEnum? _state;
  SearchReindexStateStateEnum? get state => _$this._state;
  set state(SearchReindexStateStateEnum? state) => _$this._state = state;

  String? _fromModel;
  String? get fromModel => _$this._fromModel;
  set fromModel(String? fromModel) => _$this._fromModel = fromModel;

  String? _toModel;
  String? get toModel => _$this._toModel;
  set toModel(String? toModel) => _$this._toModel = toModel;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _done;
  int? get done => _$this._done;
  set done(int? done) => _$this._done = done;

  num? _percent;
  num? get percent => _$this._percent;
  set percent(num? percent) => _$this._percent = percent;

  num? _ratePerMinute;
  num? get ratePerMinute => _$this._ratePerMinute;
  set ratePerMinute(num? ratePerMinute) =>
      _$this._ratePerMinute = ratePerMinute;

  int? _etaSeconds;
  int? get etaSeconds => _$this._etaSeconds;
  set etaSeconds(int? etaSeconds) => _$this._etaSeconds = etaSeconds;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  SearchReindexStateBuilder() {
    SearchReindexState._defaults(this);
  }

  SearchReindexStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _fromModel = $v.fromModel;
      _toModel = $v.toModel;
      _total = $v.total;
      _done = $v.done;
      _percent = $v.percent;
      _ratePerMinute = $v.ratePerMinute;
      _etaSeconds = $v.etaSeconds;
      _startedAt = $v.startedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchReindexState other) {
    _$v = other as _$SearchReindexState;
  }

  @override
  void update(void Function(SearchReindexStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchReindexState build() => _build();

  _$SearchReindexState _build() {
    final _$result =
        _$v ??
        _$SearchReindexState._(
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'SearchReindexState',
            'state',
          ),
          fromModel: fromModel,
          toModel: toModel,
          total: total,
          done: done,
          percent: percent,
          ratePerMinute: ratePerMinute,
          etaSeconds: etaSeconds,
          startedAt: startedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
