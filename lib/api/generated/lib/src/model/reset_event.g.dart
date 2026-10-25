// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResetEventReasonEnum _$resetEventReasonEnum_bufferOverflow =
    const ResetEventReasonEnum._('bufferOverflow');
const ResetEventReasonEnum _$resetEventReasonEnum_replayCap =
    const ResetEventReasonEnum._('replayCap');
const ResetEventReasonEnum _$resetEventReasonEnum_resyncRequired =
    const ResetEventReasonEnum._('resyncRequired');
const ResetEventReasonEnum _$resetEventReasonEnum_unknownDefaultOpenApi =
    const ResetEventReasonEnum._('unknownDefaultOpenApi');

ResetEventReasonEnum _$resetEventReasonEnumValueOf(String name) {
  switch (name) {
    case 'bufferOverflow':
      return _$resetEventReasonEnum_bufferOverflow;
    case 'replayCap':
      return _$resetEventReasonEnum_replayCap;
    case 'resyncRequired':
      return _$resetEventReasonEnum_resyncRequired;
    case 'unknownDefaultOpenApi':
      return _$resetEventReasonEnum_unknownDefaultOpenApi;
    default:
      return _$resetEventReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ResetEventReasonEnum> _$resetEventReasonEnumValues =
    BuiltSet<ResetEventReasonEnum>(const <ResetEventReasonEnum>[
      _$resetEventReasonEnum_bufferOverflow,
      _$resetEventReasonEnum_replayCap,
      _$resetEventReasonEnum_resyncRequired,
      _$resetEventReasonEnum_unknownDefaultOpenApi,
    ]);

Serializer<ResetEventReasonEnum> _$resetEventReasonEnumSerializer =
    _$ResetEventReasonEnumSerializer();

class _$ResetEventReasonEnumSerializer
    implements PrimitiveSerializer<ResetEventReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bufferOverflow': 'buffer_overflow',
    'replayCap': 'replay_cap',
    'resyncRequired': 'resync_required',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'buffer_overflow': 'bufferOverflow',
    'replay_cap': 'replayCap',
    'resync_required': 'resyncRequired',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ResetEventReasonEnum];
  @override
  final String wireName = 'ResetEventReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    ResetEventReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ResetEventReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ResetEventReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ResetEvent extends ResetEvent {
  @override
  final ResetEventReasonEnum reason;
  @override
  final int? resumeAfter;
  @override
  final int? watermarkSeq;

  factory _$ResetEvent([void Function(ResetEventBuilder)? updates]) =>
      (ResetEventBuilder()..update(updates))._build();

  _$ResetEvent._({required this.reason, this.resumeAfter, this.watermarkSeq})
    : super._();
  @override
  ResetEvent rebuild(void Function(ResetEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetEventBuilder toBuilder() => ResetEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetEvent &&
        reason == other.reason &&
        resumeAfter == other.resumeAfter &&
        watermarkSeq == other.watermarkSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, resumeAfter.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResetEvent')
          ..add('reason', reason)
          ..add('resumeAfter', resumeAfter)
          ..add('watermarkSeq', watermarkSeq))
        .toString();
  }
}

class ResetEventBuilder implements Builder<ResetEvent, ResetEventBuilder> {
  _$ResetEvent? _$v;

  ResetEventReasonEnum? _reason;
  ResetEventReasonEnum? get reason => _$this._reason;
  set reason(ResetEventReasonEnum? reason) => _$this._reason = reason;

  int? _resumeAfter;
  int? get resumeAfter => _$this._resumeAfter;
  set resumeAfter(int? resumeAfter) => _$this._resumeAfter = resumeAfter;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  ResetEventBuilder() {
    ResetEvent._defaults(this);
  }

  ResetEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _resumeAfter = $v.resumeAfter;
      _watermarkSeq = $v.watermarkSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetEvent other) {
    _$v = other as _$ResetEvent;
  }

  @override
  void update(void Function(ResetEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetEvent build() => _build();

  _$ResetEvent _build() {
    final _$result =
        _$v ??
        _$ResetEvent._(
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ResetEvent',
            'reason',
          ),
          resumeAfter: resumeAfter,
          watermarkSeq: watermarkSeq,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
