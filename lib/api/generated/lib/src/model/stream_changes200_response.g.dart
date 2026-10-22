// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_changes200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StreamChanges200ResponseReasonEnum
_$streamChanges200ResponseReasonEnum_bufferOverflow =
    const StreamChanges200ResponseReasonEnum._('bufferOverflow');
const StreamChanges200ResponseReasonEnum
_$streamChanges200ResponseReasonEnum_replayCap =
    const StreamChanges200ResponseReasonEnum._('replayCap');
const StreamChanges200ResponseReasonEnum
_$streamChanges200ResponseReasonEnum_resyncRequired =
    const StreamChanges200ResponseReasonEnum._('resyncRequired');

StreamChanges200ResponseReasonEnum _$streamChanges200ResponseReasonEnumValueOf(
  String name,
) {
  switch (name) {
    case 'bufferOverflow':
      return _$streamChanges200ResponseReasonEnum_bufferOverflow;
    case 'replayCap':
      return _$streamChanges200ResponseReasonEnum_replayCap;
    case 'resyncRequired':
      return _$streamChanges200ResponseReasonEnum_resyncRequired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StreamChanges200ResponseReasonEnum>
_$streamChanges200ResponseReasonEnumValues =
    BuiltSet<StreamChanges200ResponseReasonEnum>(
      const <StreamChanges200ResponseReasonEnum>[
        _$streamChanges200ResponseReasonEnum_bufferOverflow,
        _$streamChanges200ResponseReasonEnum_replayCap,
        _$streamChanges200ResponseReasonEnum_resyncRequired,
      ],
    );

Serializer<StreamChanges200ResponseReasonEnum>
_$streamChanges200ResponseReasonEnumSerializer =
    _$StreamChanges200ResponseReasonEnumSerializer();

class _$StreamChanges200ResponseReasonEnumSerializer
    implements PrimitiveSerializer<StreamChanges200ResponseReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bufferOverflow': 'buffer_overflow',
    'replayCap': 'replay_cap',
    'resyncRequired': 'resync_required',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'buffer_overflow': 'bufferOverflow',
    'replay_cap': 'replayCap',
    'resync_required': 'resyncRequired',
  };

  @override
  final Iterable<Type> types = const <Type>[StreamChanges200ResponseReasonEnum];
  @override
  final String wireName = 'StreamChanges200ResponseReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    StreamChanges200ResponseReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StreamChanges200ResponseReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StreamChanges200ResponseReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StreamChanges200Response extends StreamChanges200Response {
  @override
  final AnyOf anyOf;

  factory _$StreamChanges200Response([
    void Function(StreamChanges200ResponseBuilder)? updates,
  ]) => (StreamChanges200ResponseBuilder()..update(updates))._build();

  _$StreamChanges200Response._({required this.anyOf}) : super._();
  @override
  StreamChanges200Response rebuild(
    void Function(StreamChanges200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StreamChanges200ResponseBuilder toBuilder() =>
      StreamChanges200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamChanges200Response && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'StreamChanges200Response',
    )..add('anyOf', anyOf)).toString();
  }
}

class StreamChanges200ResponseBuilder
    implements
        Builder<StreamChanges200Response, StreamChanges200ResponseBuilder> {
  _$StreamChanges200Response? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  StreamChanges200ResponseBuilder() {
    StreamChanges200Response._defaults(this);
  }

  StreamChanges200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamChanges200Response other) {
    _$v = other as _$StreamChanges200Response;
  }

  @override
  void update(void Function(StreamChanges200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamChanges200Response build() => _build();

  _$StreamChanges200Response _build() {
    final _$result =
        _$v ??
        _$StreamChanges200Response._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
            anyOf,
            r'StreamChanges200Response',
            'anyOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
