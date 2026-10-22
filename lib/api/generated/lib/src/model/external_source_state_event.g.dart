// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source_state_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExternalSourceStateEventChangeEnum
_$externalSourceStateEventChangeEnum_registered =
    const ExternalSourceStateEventChangeEnum._('registered');
const ExternalSourceStateEventChangeEnum
_$externalSourceStateEventChangeEnum_approved =
    const ExternalSourceStateEventChangeEnum._('approved');
const ExternalSourceStateEventChangeEnum
_$externalSourceStateEventChangeEnum_suspended =
    const ExternalSourceStateEventChangeEnum._('suspended');
const ExternalSourceStateEventChangeEnum
_$externalSourceStateEventChangeEnum_manifestChanged =
    const ExternalSourceStateEventChangeEnum._('manifestChanged');
const ExternalSourceStateEventChangeEnum
_$externalSourceStateEventChangeEnum_deleted =
    const ExternalSourceStateEventChangeEnum._('deleted');

ExternalSourceStateEventChangeEnum _$externalSourceStateEventChangeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'registered':
      return _$externalSourceStateEventChangeEnum_registered;
    case 'approved':
      return _$externalSourceStateEventChangeEnum_approved;
    case 'suspended':
      return _$externalSourceStateEventChangeEnum_suspended;
    case 'manifestChanged':
      return _$externalSourceStateEventChangeEnum_manifestChanged;
    case 'deleted':
      return _$externalSourceStateEventChangeEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExternalSourceStateEventChangeEnum>
_$externalSourceStateEventChangeEnumValues =
    BuiltSet<ExternalSourceStateEventChangeEnum>(
      const <ExternalSourceStateEventChangeEnum>[
        _$externalSourceStateEventChangeEnum_registered,
        _$externalSourceStateEventChangeEnum_approved,
        _$externalSourceStateEventChangeEnum_suspended,
        _$externalSourceStateEventChangeEnum_manifestChanged,
        _$externalSourceStateEventChangeEnum_deleted,
      ],
    );

Serializer<ExternalSourceStateEventChangeEnum>
_$externalSourceStateEventChangeEnumSerializer =
    _$ExternalSourceStateEventChangeEnumSerializer();

class _$ExternalSourceStateEventChangeEnumSerializer
    implements PrimitiveSerializer<ExternalSourceStateEventChangeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'registered': 'registered',
    'approved': 'approved',
    'suspended': 'suspended',
    'manifestChanged': 'manifest-changed',
    'deleted': 'deleted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'registered': 'registered',
    'approved': 'approved',
    'suspended': 'suspended',
    'manifest-changed': 'manifestChanged',
    'deleted': 'deleted',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalSourceStateEventChangeEnum];
  @override
  final String wireName = 'ExternalSourceStateEventChangeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExternalSourceStateEventChangeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExternalSourceStateEventChangeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExternalSourceStateEventChangeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExternalSourceStateEvent extends ExternalSourceStateEvent {
  @override
  final String sourceId;
  @override
  final String? state;
  @override
  final ExternalSourceStateEventChangeEnum change;
  @override
  final DateTime at;

  factory _$ExternalSourceStateEvent([
    void Function(ExternalSourceStateEventBuilder)? updates,
  ]) => (ExternalSourceStateEventBuilder()..update(updates))._build();

  _$ExternalSourceStateEvent._({
    required this.sourceId,
    this.state,
    required this.change,
    required this.at,
  }) : super._();
  @override
  ExternalSourceStateEvent rebuild(
    void Function(ExternalSourceStateEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalSourceStateEventBuilder toBuilder() =>
      ExternalSourceStateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSourceStateEvent &&
        sourceId == other.sourceId &&
        state == other.state &&
        change == other.change &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalSourceStateEvent')
          ..add('sourceId', sourceId)
          ..add('state', state)
          ..add('change', change)
          ..add('at', at))
        .toString();
  }
}

class ExternalSourceStateEventBuilder
    implements
        Builder<ExternalSourceStateEvent, ExternalSourceStateEventBuilder> {
  _$ExternalSourceStateEvent? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  ExternalSourceStateEventChangeEnum? _change;
  ExternalSourceStateEventChangeEnum? get change => _$this._change;
  set change(ExternalSourceStateEventChangeEnum? change) =>
      _$this._change = change;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ExternalSourceStateEventBuilder() {
    ExternalSourceStateEvent._defaults(this);
  }

  ExternalSourceStateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _state = $v.state;
      _change = $v.change;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSourceStateEvent other) {
    _$v = other as _$ExternalSourceStateEvent;
  }

  @override
  void update(void Function(ExternalSourceStateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSourceStateEvent build() => _build();

  _$ExternalSourceStateEvent _build() {
    final _$result =
        _$v ??
        _$ExternalSourceStateEvent._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'ExternalSourceStateEvent',
            'sourceId',
          ),
          state: state,
          change: BuiltValueNullFieldError.checkNotNull(
            change,
            r'ExternalSourceStateEvent',
            'change',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'ExternalSourceStateEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
