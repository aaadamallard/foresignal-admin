// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_frame_removals_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HistoryFrameRemovalsInnerReasonEnum
_$historyFrameRemovalsInnerReasonEnum_tombstone =
    const HistoryFrameRemovalsInnerReasonEnum._('tombstone');
const HistoryFrameRemovalsInnerReasonEnum
_$historyFrameRemovalsInnerReasonEnum_expired =
    const HistoryFrameRemovalsInnerReasonEnum._('expired');
const HistoryFrameRemovalsInnerReasonEnum
_$historyFrameRemovalsInnerReasonEnum_left =
    const HistoryFrameRemovalsInnerReasonEnum._('left');
const HistoryFrameRemovalsInnerReasonEnum
_$historyFrameRemovalsInnerReasonEnum_unknownDefaultOpenApi =
    const HistoryFrameRemovalsInnerReasonEnum._('unknownDefaultOpenApi');

HistoryFrameRemovalsInnerReasonEnum
_$historyFrameRemovalsInnerReasonEnumValueOf(String name) {
  switch (name) {
    case 'tombstone':
      return _$historyFrameRemovalsInnerReasonEnum_tombstone;
    case 'expired':
      return _$historyFrameRemovalsInnerReasonEnum_expired;
    case 'left':
      return _$historyFrameRemovalsInnerReasonEnum_left;
    case 'unknownDefaultOpenApi':
      return _$historyFrameRemovalsInnerReasonEnum_unknownDefaultOpenApi;
    default:
      return _$historyFrameRemovalsInnerReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HistoryFrameRemovalsInnerReasonEnum>
_$historyFrameRemovalsInnerReasonEnumValues =
    BuiltSet<HistoryFrameRemovalsInnerReasonEnum>(
      const <HistoryFrameRemovalsInnerReasonEnum>[
        _$historyFrameRemovalsInnerReasonEnum_tombstone,
        _$historyFrameRemovalsInnerReasonEnum_expired,
        _$historyFrameRemovalsInnerReasonEnum_left,
        _$historyFrameRemovalsInnerReasonEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<HistoryFrameRemovalsInnerReasonEnum>
_$historyFrameRemovalsInnerReasonEnumSerializer =
    _$HistoryFrameRemovalsInnerReasonEnumSerializer();

class _$HistoryFrameRemovalsInnerReasonEnumSerializer
    implements PrimitiveSerializer<HistoryFrameRemovalsInnerReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tombstone': 'tombstone',
    'expired': 'expired',
    'left': 'left',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tombstone': 'tombstone',
    'expired': 'expired',
    'left': 'left',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    HistoryFrameRemovalsInnerReasonEnum,
  ];
  @override
  final String wireName = 'HistoryFrameRemovalsInnerReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    HistoryFrameRemovalsInnerReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HistoryFrameRemovalsInnerReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HistoryFrameRemovalsInnerReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HistoryFrameRemovalsInner extends HistoryFrameRemovalsInner {
  @override
  final String id;
  @override
  final HistoryFrameRemovalsInnerReasonEnum reason;
  @override
  final bool left;

  factory _$HistoryFrameRemovalsInner([
    void Function(HistoryFrameRemovalsInnerBuilder)? updates,
  ]) => (HistoryFrameRemovalsInnerBuilder()..update(updates))._build();

  _$HistoryFrameRemovalsInner._({
    required this.id,
    required this.reason,
    required this.left,
  }) : super._();
  @override
  HistoryFrameRemovalsInner rebuild(
    void Function(HistoryFrameRemovalsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HistoryFrameRemovalsInnerBuilder toBuilder() =>
      HistoryFrameRemovalsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryFrameRemovalsInner &&
        id == other.id &&
        reason == other.reason &&
        left == other.left;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, left.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryFrameRemovalsInner')
          ..add('id', id)
          ..add('reason', reason)
          ..add('left', left))
        .toString();
  }
}

class HistoryFrameRemovalsInnerBuilder
    implements
        Builder<HistoryFrameRemovalsInner, HistoryFrameRemovalsInnerBuilder> {
  _$HistoryFrameRemovalsInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  HistoryFrameRemovalsInnerReasonEnum? _reason;
  HistoryFrameRemovalsInnerReasonEnum? get reason => _$this._reason;
  set reason(HistoryFrameRemovalsInnerReasonEnum? reason) =>
      _$this._reason = reason;

  bool? _left;
  bool? get left => _$this._left;
  set left(bool? left) => _$this._left = left;

  HistoryFrameRemovalsInnerBuilder() {
    HistoryFrameRemovalsInner._defaults(this);
  }

  HistoryFrameRemovalsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _reason = $v.reason;
      _left = $v.left;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryFrameRemovalsInner other) {
    _$v = other as _$HistoryFrameRemovalsInner;
  }

  @override
  void update(void Function(HistoryFrameRemovalsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryFrameRemovalsInner build() => _build();

  _$HistoryFrameRemovalsInner _build() {
    final _$result =
        _$v ??
        _$HistoryFrameRemovalsInner._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'HistoryFrameRemovalsInner',
            'id',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'HistoryFrameRemovalsInner',
            'reason',
          ),
          left: BuiltValueNullFieldError.checkNotNull(
            left,
            r'HistoryFrameRemovalsInner',
            'left',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
