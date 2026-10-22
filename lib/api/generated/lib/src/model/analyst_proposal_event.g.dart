// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_proposal_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystProposalEventChangeEnum _$analystProposalEventChangeEnum_created =
    const AnalystProposalEventChangeEnum._('created');
const AnalystProposalEventChangeEnum _$analystProposalEventChangeEnum_executed =
    const AnalystProposalEventChangeEnum._('executed');
const AnalystProposalEventChangeEnum _$analystProposalEventChangeEnum_rejected =
    const AnalystProposalEventChangeEnum._('rejected');
const AnalystProposalEventChangeEnum _$analystProposalEventChangeEnum_expired =
    const AnalystProposalEventChangeEnum._('expired');
const AnalystProposalEventChangeEnum _$analystProposalEventChangeEnum_failed =
    const AnalystProposalEventChangeEnum._('failed');

AnalystProposalEventChangeEnum _$analystProposalEventChangeEnumValueOf(
    String name) {
  switch (name) {
    case 'created':
      return _$analystProposalEventChangeEnum_created;
    case 'executed':
      return _$analystProposalEventChangeEnum_executed;
    case 'rejected':
      return _$analystProposalEventChangeEnum_rejected;
    case 'expired':
      return _$analystProposalEventChangeEnum_expired;
    case 'failed':
      return _$analystProposalEventChangeEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystProposalEventChangeEnum>
    _$analystProposalEventChangeEnumValues = BuiltSet<
        AnalystProposalEventChangeEnum>(const <AnalystProposalEventChangeEnum>[
  _$analystProposalEventChangeEnum_created,
  _$analystProposalEventChangeEnum_executed,
  _$analystProposalEventChangeEnum_rejected,
  _$analystProposalEventChangeEnum_expired,
  _$analystProposalEventChangeEnum_failed,
]);

Serializer<AnalystProposalEventChangeEnum>
    _$analystProposalEventChangeEnumSerializer =
    _$AnalystProposalEventChangeEnumSerializer();

class _$AnalystProposalEventChangeEnumSerializer
    implements PrimitiveSerializer<AnalystProposalEventChangeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'created': 'created',
    'executed': 'executed',
    'rejected': 'rejected',
    'expired': 'expired',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'created': 'created',
    'executed': 'executed',
    'rejected': 'rejected',
    'expired': 'expired',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystProposalEventChangeEnum];
  @override
  final String wireName = 'AnalystProposalEventChangeEnum';

  @override
  Object serialize(
          Serializers serializers, AnalystProposalEventChangeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystProposalEventChangeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystProposalEventChangeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystProposalEvent extends AnalystProposalEvent {
  @override
  final AnalystProposalEventChangeEnum change;
  @override
  final AnalystProposal proposal;

  factory _$AnalystProposalEvent(
          [void Function(AnalystProposalEventBuilder)? updates]) =>
      (AnalystProposalEventBuilder()..update(updates))._build();

  _$AnalystProposalEvent._({required this.change, required this.proposal})
      : super._();
  @override
  AnalystProposalEvent rebuild(
          void Function(AnalystProposalEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystProposalEventBuilder toBuilder() =>
      AnalystProposalEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystProposalEvent &&
        change == other.change &&
        proposal == other.proposal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, proposal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystProposalEvent')
          ..add('change', change)
          ..add('proposal', proposal))
        .toString();
  }
}

class AnalystProposalEventBuilder
    implements Builder<AnalystProposalEvent, AnalystProposalEventBuilder> {
  _$AnalystProposalEvent? _$v;

  AnalystProposalEventChangeEnum? _change;
  AnalystProposalEventChangeEnum? get change => _$this._change;
  set change(AnalystProposalEventChangeEnum? change) => _$this._change = change;

  AnalystProposalBuilder? _proposal;
  AnalystProposalBuilder get proposal =>
      _$this._proposal ??= AnalystProposalBuilder();
  set proposal(AnalystProposalBuilder? proposal) => _$this._proposal = proposal;

  AnalystProposalEventBuilder() {
    AnalystProposalEvent._defaults(this);
  }

  AnalystProposalEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _change = $v.change;
      _proposal = $v.proposal.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystProposalEvent other) {
    _$v = other as _$AnalystProposalEvent;
  }

  @override
  void update(void Function(AnalystProposalEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystProposalEvent build() => _build();

  _$AnalystProposalEvent _build() {
    _$AnalystProposalEvent _$result;
    try {
      _$result = _$v ??
          _$AnalystProposalEvent._(
            change: BuiltValueNullFieldError.checkNotNull(
                change, r'AnalystProposalEvent', 'change'),
            proposal: proposal.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'proposal';
        proposal.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalystProposalEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
