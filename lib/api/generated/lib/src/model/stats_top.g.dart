// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_top.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatsTopByEnum _$statsTopByEnum_source_ =
    const StatsTopByEnum._('source_');
const StatsTopByEnum _$statsTopByEnum_kind = const StatsTopByEnum._('kind');
const StatsTopByEnum _$statsTopByEnum_cell = const StatsTopByEnum._('cell');
const StatsTopByEnum _$statsTopByEnum_entity = const StatsTopByEnum._('entity');

StatsTopByEnum _$statsTopByEnumValueOf(String name) {
  switch (name) {
    case 'source_':
      return _$statsTopByEnum_source_;
    case 'kind':
      return _$statsTopByEnum_kind;
    case 'cell':
      return _$statsTopByEnum_cell;
    case 'entity':
      return _$statsTopByEnum_entity;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatsTopByEnum> _$statsTopByEnumValues =
    BuiltSet<StatsTopByEnum>(const <StatsTopByEnum>[
  _$statsTopByEnum_source_,
  _$statsTopByEnum_kind,
  _$statsTopByEnum_cell,
  _$statsTopByEnum_entity,
]);

const StatsTopBackendEnum _$statsTopBackendEnum_rollup =
    const StatsTopBackendEnum._('rollup');
const StatsTopBackendEnum _$statsTopBackendEnum_raw =
    const StatsTopBackendEnum._('raw');
const StatsTopBackendEnum _$statsTopBackendEnum_mixed =
    const StatsTopBackendEnum._('mixed');

StatsTopBackendEnum _$statsTopBackendEnumValueOf(String name) {
  switch (name) {
    case 'rollup':
      return _$statsTopBackendEnum_rollup;
    case 'raw':
      return _$statsTopBackendEnum_raw;
    case 'mixed':
      return _$statsTopBackendEnum_mixed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatsTopBackendEnum> _$statsTopBackendEnumValues =
    BuiltSet<StatsTopBackendEnum>(const <StatsTopBackendEnum>[
  _$statsTopBackendEnum_rollup,
  _$statsTopBackendEnum_raw,
  _$statsTopBackendEnum_mixed,
]);

Serializer<StatsTopByEnum> _$statsTopByEnumSerializer =
    _$StatsTopByEnumSerializer();
Serializer<StatsTopBackendEnum> _$statsTopBackendEnumSerializer =
    _$StatsTopBackendEnumSerializer();

class _$StatsTopByEnumSerializer
    implements PrimitiveSerializer<StatsTopByEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'source_': 'source',
    'kind': 'kind',
    'cell': 'cell',
    'entity': 'entity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'source': 'source_',
    'kind': 'kind',
    'cell': 'cell',
    'entity': 'entity',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsTopByEnum];
  @override
  final String wireName = 'StatsTopByEnum';

  @override
  Object serialize(Serializers serializers, StatsTopByEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StatsTopByEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StatsTopByEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StatsTopBackendEnumSerializer
    implements PrimitiveSerializer<StatsTopBackendEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rollup': 'rollup',
    'raw': 'raw',
    'mixed': 'mixed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'rollup': 'rollup',
    'raw': 'raw',
    'mixed': 'mixed',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsTopBackendEnum];
  @override
  final String wireName = 'StatsTopBackendEnum';

  @override
  Object serialize(Serializers serializers, StatsTopBackendEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StatsTopBackendEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StatsTopBackendEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StatsTop extends StatsTop {
  @override
  final StatsTopByEnum by;
  @override
  final String measure;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final StatsTopBackendEnum? backend;
  @override
  final BuiltList<StatsTopItemsInner> items;

  factory _$StatsTop([void Function(StatsTopBuilder)? updates]) =>
      (StatsTopBuilder()..update(updates))._build();

  _$StatsTop._(
      {required this.by,
      required this.measure,
      this.from,
      this.to,
      this.backend,
      required this.items})
      : super._();
  @override
  StatsTop rebuild(void Function(StatsTopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsTopBuilder toBuilder() => StatsTopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsTop &&
        by == other.by &&
        measure == other.measure &&
        from == other.from &&
        to == other.to &&
        backend == other.backend &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, measure.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, backend.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsTop')
          ..add('by', by)
          ..add('measure', measure)
          ..add('from', from)
          ..add('to', to)
          ..add('backend', backend)
          ..add('items', items))
        .toString();
  }
}

class StatsTopBuilder implements Builder<StatsTop, StatsTopBuilder> {
  _$StatsTop? _$v;

  StatsTopByEnum? _by;
  StatsTopByEnum? get by => _$this._by;
  set by(StatsTopByEnum? by) => _$this._by = by;

  String? _measure;
  String? get measure => _$this._measure;
  set measure(String? measure) => _$this._measure = measure;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  StatsTopBackendEnum? _backend;
  StatsTopBackendEnum? get backend => _$this._backend;
  set backend(StatsTopBackendEnum? backend) => _$this._backend = backend;

  ListBuilder<StatsTopItemsInner>? _items;
  ListBuilder<StatsTopItemsInner> get items =>
      _$this._items ??= ListBuilder<StatsTopItemsInner>();
  set items(ListBuilder<StatsTopItemsInner>? items) => _$this._items = items;

  StatsTopBuilder() {
    StatsTop._defaults(this);
  }

  StatsTopBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _by = $v.by;
      _measure = $v.measure;
      _from = $v.from;
      _to = $v.to;
      _backend = $v.backend;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsTop other) {
    _$v = other as _$StatsTop;
  }

  @override
  void update(void Function(StatsTopBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsTop build() => _build();

  _$StatsTop _build() {
    _$StatsTop _$result;
    try {
      _$result = _$v ??
          _$StatsTop._(
            by: BuiltValueNullFieldError.checkNotNull(by, r'StatsTop', 'by'),
            measure: BuiltValueNullFieldError.checkNotNull(
                measure, r'StatsTop', 'measure'),
            from: from,
            to: to,
            backend: backend,
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StatsTop', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
