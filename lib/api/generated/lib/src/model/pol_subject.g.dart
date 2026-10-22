// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_subject.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PolSubjectSubjectTypeEnum _$polSubjectSubjectTypeEnum_record =
    const PolSubjectSubjectTypeEnum._('record');
const PolSubjectSubjectTypeEnum _$polSubjectSubjectTypeEnum_entity =
    const PolSubjectSubjectTypeEnum._('entity');
const PolSubjectSubjectTypeEnum _$polSubjectSubjectTypeEnum_watchlist =
    const PolSubjectSubjectTypeEnum._('watchlist');

PolSubjectSubjectTypeEnum _$polSubjectSubjectTypeEnumValueOf(String name) {
  switch (name) {
    case 'record':
      return _$polSubjectSubjectTypeEnum_record;
    case 'entity':
      return _$polSubjectSubjectTypeEnum_entity;
    case 'watchlist':
      return _$polSubjectSubjectTypeEnum_watchlist;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PolSubjectSubjectTypeEnum> _$polSubjectSubjectTypeEnumValues =
    BuiltSet<PolSubjectSubjectTypeEnum>(const <PolSubjectSubjectTypeEnum>[
  _$polSubjectSubjectTypeEnum_record,
  _$polSubjectSubjectTypeEnum_entity,
  _$polSubjectSubjectTypeEnum_watchlist,
]);

Serializer<PolSubjectSubjectTypeEnum> _$polSubjectSubjectTypeEnumSerializer =
    _$PolSubjectSubjectTypeEnumSerializer();

class _$PolSubjectSubjectTypeEnumSerializer
    implements PrimitiveSerializer<PolSubjectSubjectTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'entity': 'entity',
    'watchlist': 'watchlist',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'entity': 'entity',
    'watchlist': 'watchlist',
  };

  @override
  final Iterable<Type> types = const <Type>[PolSubjectSubjectTypeEnum];
  @override
  final String wireName = 'PolSubjectSubjectTypeEnum';

  @override
  Object serialize(Serializers serializers, PolSubjectSubjectTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PolSubjectSubjectTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PolSubjectSubjectTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PolSubject extends PolSubject {
  @override
  final String id;
  @override
  final PolSubjectSubjectTypeEnum subjectType;
  @override
  final String ref;
  @override
  final bool enabled;
  @override
  final BuiltMap<String, JsonObject?>? params;
  @override
  final bool? private;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final int? lastSeq;
  @override
  final DateTime? lastComputedAt;
  @override
  final int? placeCount;
  @override
  final int? stayCount;

  factory _$PolSubject([void Function(PolSubjectBuilder)? updates]) =>
      (PolSubjectBuilder()..update(updates))._build();

  _$PolSubject._(
      {required this.id,
      required this.subjectType,
      required this.ref,
      required this.enabled,
      this.params,
      this.private,
      this.createdBy,
      required this.createdAt,
      this.lastSeq,
      this.lastComputedAt,
      this.placeCount,
      this.stayCount})
      : super._();
  @override
  PolSubject rebuild(void Function(PolSubjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolSubjectBuilder toBuilder() => PolSubjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolSubject &&
        id == other.id &&
        subjectType == other.subjectType &&
        ref == other.ref &&
        enabled == other.enabled &&
        params == other.params &&
        private == other.private &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        lastSeq == other.lastSeq &&
        lastComputedAt == other.lastComputedAt &&
        placeCount == other.placeCount &&
        stayCount == other.stayCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subjectType.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jc(_$hash, lastComputedAt.hashCode);
    _$hash = $jc(_$hash, placeCount.hashCode);
    _$hash = $jc(_$hash, stayCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolSubject')
          ..add('id', id)
          ..add('subjectType', subjectType)
          ..add('ref', ref)
          ..add('enabled', enabled)
          ..add('params', params)
          ..add('private', private)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('lastSeq', lastSeq)
          ..add('lastComputedAt', lastComputedAt)
          ..add('placeCount', placeCount)
          ..add('stayCount', stayCount))
        .toString();
  }
}

class PolSubjectBuilder implements Builder<PolSubject, PolSubjectBuilder> {
  _$PolSubject? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PolSubjectSubjectTypeEnum? _subjectType;
  PolSubjectSubjectTypeEnum? get subjectType => _$this._subjectType;
  set subjectType(PolSubjectSubjectTypeEnum? subjectType) =>
      _$this._subjectType = subjectType;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  DateTime? _lastComputedAt;
  DateTime? get lastComputedAt => _$this._lastComputedAt;
  set lastComputedAt(DateTime? lastComputedAt) =>
      _$this._lastComputedAt = lastComputedAt;

  int? _placeCount;
  int? get placeCount => _$this._placeCount;
  set placeCount(int? placeCount) => _$this._placeCount = placeCount;

  int? _stayCount;
  int? get stayCount => _$this._stayCount;
  set stayCount(int? stayCount) => _$this._stayCount = stayCount;

  PolSubjectBuilder() {
    PolSubject._defaults(this);
  }

  PolSubjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _subjectType = $v.subjectType;
      _ref = $v.ref;
      _enabled = $v.enabled;
      _params = $v.params?.toBuilder();
      _private = $v.private;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _lastSeq = $v.lastSeq;
      _lastComputedAt = $v.lastComputedAt;
      _placeCount = $v.placeCount;
      _stayCount = $v.stayCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolSubject other) {
    _$v = other as _$PolSubject;
  }

  @override
  void update(void Function(PolSubjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolSubject build() => _build();

  _$PolSubject _build() {
    _$PolSubject _$result;
    try {
      _$result = _$v ??
          _$PolSubject._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PolSubject', 'id'),
            subjectType: BuiltValueNullFieldError.checkNotNull(
                subjectType, r'PolSubject', 'subjectType'),
            ref: BuiltValueNullFieldError.checkNotNull(
                ref, r'PolSubject', 'ref'),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'PolSubject', 'enabled'),
            params: _params?.build(),
            private: private,
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PolSubject', 'createdAt'),
            lastSeq: lastSeq,
            lastComputedAt: lastComputedAt,
            placeCount: placeCount,
            stayCount: stayCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PolSubject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
