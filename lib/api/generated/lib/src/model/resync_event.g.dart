// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resync_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResyncEventReasonEnum _$resyncEventReasonEnum_gap =
    const ResyncEventReasonEnum._('gap');
const ResyncEventReasonEnum _$resyncEventReasonEnum_liveCap =
    const ResyncEventReasonEnum._('liveCap');
const ResyncEventReasonEnum _$resyncEventReasonEnum_liveDropped =
    const ResyncEventReasonEnum._('liveDropped');

ResyncEventReasonEnum _$resyncEventReasonEnumValueOf(String name) {
  switch (name) {
    case 'gap':
      return _$resyncEventReasonEnum_gap;
    case 'liveCap':
      return _$resyncEventReasonEnum_liveCap;
    case 'liveDropped':
      return _$resyncEventReasonEnum_liveDropped;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ResyncEventReasonEnum> _$resyncEventReasonEnumValues =
    BuiltSet<ResyncEventReasonEnum>(const <ResyncEventReasonEnum>[
      _$resyncEventReasonEnum_gap,
      _$resyncEventReasonEnum_liveCap,
      _$resyncEventReasonEnum_liveDropped,
    ]);

Serializer<ResyncEventReasonEnum> _$resyncEventReasonEnumSerializer =
    _$ResyncEventReasonEnumSerializer();

class _$ResyncEventReasonEnumSerializer
    implements PrimitiveSerializer<ResyncEventReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gap': 'gap',
    'liveCap': 'live_cap',
    'liveDropped': 'live_dropped',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'gap': 'gap',
    'live_cap': 'liveCap',
    'live_dropped': 'liveDropped',
  };

  @override
  final Iterable<Type> types = const <Type>[ResyncEventReasonEnum];
  @override
  final String wireName = 'ResyncEventReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    ResyncEventReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ResyncEventReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ResyncEventReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ResyncEvent extends ResyncEvent {
  @override
  final ResyncEventReasonEnum reason;
  @override
  final int watermarkSeq;

  factory _$ResyncEvent([void Function(ResyncEventBuilder)? updates]) =>
      (ResyncEventBuilder()..update(updates))._build();

  _$ResyncEvent._({required this.reason, required this.watermarkSeq})
    : super._();
  @override
  ResyncEvent rebuild(void Function(ResyncEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResyncEventBuilder toBuilder() => ResyncEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResyncEvent &&
        reason == other.reason &&
        watermarkSeq == other.watermarkSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResyncEvent')
          ..add('reason', reason)
          ..add('watermarkSeq', watermarkSeq))
        .toString();
  }
}

class ResyncEventBuilder implements Builder<ResyncEvent, ResyncEventBuilder> {
  _$ResyncEvent? _$v;

  ResyncEventReasonEnum? _reason;
  ResyncEventReasonEnum? get reason => _$this._reason;
  set reason(ResyncEventReasonEnum? reason) => _$this._reason = reason;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  ResyncEventBuilder() {
    ResyncEvent._defaults(this);
  }

  ResyncEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _watermarkSeq = $v.watermarkSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResyncEvent other) {
    _$v = other as _$ResyncEvent;
  }

  @override
  void update(void Function(ResyncEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResyncEvent build() => _build();

  _$ResyncEvent _build() {
    final _$result =
        _$v ??
        _$ResyncEvent._(
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ResyncEvent',
            'reason',
          ),
          watermarkSeq: BuiltValueNullFieldError.checkNotNull(
            watermarkSeq,
            r'ResyncEvent',
            'watermarkSeq',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
