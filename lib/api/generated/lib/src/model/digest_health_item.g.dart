// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_health_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DigestHealthItemStatusEnum _$digestHealthItemStatusEnum_degraded =
    const DigestHealthItemStatusEnum._('degraded');
const DigestHealthItemStatusEnum _$digestHealthItemStatusEnum_failing =
    const DigestHealthItemStatusEnum._('failing');

DigestHealthItemStatusEnum _$digestHealthItemStatusEnumValueOf(String name) {
  switch (name) {
    case 'degraded':
      return _$digestHealthItemStatusEnum_degraded;
    case 'failing':
      return _$digestHealthItemStatusEnum_failing;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DigestHealthItemStatusEnum> _$digestHealthItemStatusEnumValues =
    BuiltSet<DigestHealthItemStatusEnum>(const <DigestHealthItemStatusEnum>[
      _$digestHealthItemStatusEnum_degraded,
      _$digestHealthItemStatusEnum_failing,
    ]);

Serializer<DigestHealthItemStatusEnum> _$digestHealthItemStatusEnumSerializer =
    _$DigestHealthItemStatusEnumSerializer();

class _$DigestHealthItemStatusEnumSerializer
    implements PrimitiveSerializer<DigestHealthItemStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'degraded': 'degraded',
    'failing': 'failing',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'degraded': 'degraded',
    'failing': 'failing',
  };

  @override
  final Iterable<Type> types = const <Type>[DigestHealthItemStatusEnum];
  @override
  final String wireName = 'DigestHealthItemStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DigestHealthItemStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DigestHealthItemStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DigestHealthItemStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DigestHealthItem extends DigestHealthItem {
  @override
  final String sourceId;
  @override
  final DigestHealthItemStatusEnum status;
  @override
  final DateTime? since;
  @override
  final String? lastError;

  factory _$DigestHealthItem([
    void Function(DigestHealthItemBuilder)? updates,
  ]) => (DigestHealthItemBuilder()..update(updates))._build();

  _$DigestHealthItem._({
    required this.sourceId,
    required this.status,
    this.since,
    this.lastError,
  }) : super._();
  @override
  DigestHealthItem rebuild(void Function(DigestHealthItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestHealthItemBuilder toBuilder() =>
      DigestHealthItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestHealthItem &&
        sourceId == other.sourceId &&
        status == other.status &&
        since == other.since &&
        lastError == other.lastError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestHealthItem')
          ..add('sourceId', sourceId)
          ..add('status', status)
          ..add('since', since)
          ..add('lastError', lastError))
        .toString();
  }
}

class DigestHealthItemBuilder
    implements Builder<DigestHealthItem, DigestHealthItemBuilder> {
  _$DigestHealthItem? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  DigestHealthItemStatusEnum? _status;
  DigestHealthItemStatusEnum? get status => _$this._status;
  set status(DigestHealthItemStatusEnum? status) => _$this._status = status;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  DigestHealthItemBuilder() {
    DigestHealthItem._defaults(this);
  }

  DigestHealthItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _status = $v.status;
      _since = $v.since;
      _lastError = $v.lastError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestHealthItem other) {
    _$v = other as _$DigestHealthItem;
  }

  @override
  void update(void Function(DigestHealthItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestHealthItem build() => _build();

  _$DigestHealthItem _build() {
    final _$result =
        _$v ??
        _$DigestHealthItem._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'DigestHealthItem',
            'sourceId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'DigestHealthItem',
            'status',
          ),
          since: since,
          lastError: lastError,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
