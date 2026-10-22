// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_context_playback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WorkspaceContextPlaybackStateEnum
_$workspaceContextPlaybackStateEnum_playing =
    const WorkspaceContextPlaybackStateEnum._('playing');
const WorkspaceContextPlaybackStateEnum
_$workspaceContextPlaybackStateEnum_paused =
    const WorkspaceContextPlaybackStateEnum._('paused');

WorkspaceContextPlaybackStateEnum _$workspaceContextPlaybackStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'playing':
      return _$workspaceContextPlaybackStateEnum_playing;
    case 'paused':
      return _$workspaceContextPlaybackStateEnum_paused;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WorkspaceContextPlaybackStateEnum>
_$workspaceContextPlaybackStateEnumValues =
    BuiltSet<WorkspaceContextPlaybackStateEnum>(
      const <WorkspaceContextPlaybackStateEnum>[
        _$workspaceContextPlaybackStateEnum_playing,
        _$workspaceContextPlaybackStateEnum_paused,
      ],
    );

Serializer<WorkspaceContextPlaybackStateEnum>
_$workspaceContextPlaybackStateEnumSerializer =
    _$WorkspaceContextPlaybackStateEnumSerializer();

class _$WorkspaceContextPlaybackStateEnumSerializer
    implements PrimitiveSerializer<WorkspaceContextPlaybackStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'playing': 'playing',
    'paused': 'paused',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'playing': 'playing',
    'paused': 'paused',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkspaceContextPlaybackStateEnum];
  @override
  final String wireName = 'WorkspaceContextPlaybackStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceContextPlaybackStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WorkspaceContextPlaybackStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WorkspaceContextPlaybackStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WorkspaceContextPlayback extends WorkspaceContextPlayback {
  @override
  final WorkspaceContextPlaybackStateEnum state;
  @override
  final num? rate;

  factory _$WorkspaceContextPlayback([
    void Function(WorkspaceContextPlaybackBuilder)? updates,
  ]) => (WorkspaceContextPlaybackBuilder()..update(updates))._build();

  _$WorkspaceContextPlayback._({required this.state, this.rate}) : super._();
  @override
  WorkspaceContextPlayback rebuild(
    void Function(WorkspaceContextPlaybackBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WorkspaceContextPlaybackBuilder toBuilder() =>
      WorkspaceContextPlaybackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceContextPlayback &&
        state == other.state &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceContextPlayback')
          ..add('state', state)
          ..add('rate', rate))
        .toString();
  }
}

class WorkspaceContextPlaybackBuilder
    implements
        Builder<WorkspaceContextPlayback, WorkspaceContextPlaybackBuilder> {
  _$WorkspaceContextPlayback? _$v;

  WorkspaceContextPlaybackStateEnum? _state;
  WorkspaceContextPlaybackStateEnum? get state => _$this._state;
  set state(WorkspaceContextPlaybackStateEnum? state) => _$this._state = state;

  num? _rate;
  num? get rate => _$this._rate;
  set rate(num? rate) => _$this._rate = rate;

  WorkspaceContextPlaybackBuilder() {
    WorkspaceContextPlayback._defaults(this);
  }

  WorkspaceContextPlaybackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceContextPlayback other) {
    _$v = other as _$WorkspaceContextPlayback;
  }

  @override
  void update(void Function(WorkspaceContextPlaybackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceContextPlayback build() => _build();

  _$WorkspaceContextPlayback _build() {
    final _$result =
        _$v ??
        _$WorkspaceContextPlayback._(
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'WorkspaceContextPlayback',
            'state',
          ),
          rate: rate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
