// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_view200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StreamView200ResponseReasonEnum
_$streamView200ResponseReasonEnum_bufferOverflow =
    const StreamView200ResponseReasonEnum._('bufferOverflow');
const StreamView200ResponseReasonEnum
_$streamView200ResponseReasonEnum_replayCap =
    const StreamView200ResponseReasonEnum._('replayCap');
const StreamView200ResponseReasonEnum
_$streamView200ResponseReasonEnum_resyncRequired =
    const StreamView200ResponseReasonEnum._('resyncRequired');
const StreamView200ResponseReasonEnum
_$streamView200ResponseReasonEnum_unknownDefaultOpenApi =
    const StreamView200ResponseReasonEnum._('unknownDefaultOpenApi');

StreamView200ResponseReasonEnum _$streamView200ResponseReasonEnumValueOf(
  String name,
) {
  switch (name) {
    case 'bufferOverflow':
      return _$streamView200ResponseReasonEnum_bufferOverflow;
    case 'replayCap':
      return _$streamView200ResponseReasonEnum_replayCap;
    case 'resyncRequired':
      return _$streamView200ResponseReasonEnum_resyncRequired;
    case 'unknownDefaultOpenApi':
      return _$streamView200ResponseReasonEnum_unknownDefaultOpenApi;
    default:
      return _$streamView200ResponseReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StreamView200ResponseReasonEnum>
_$streamView200ResponseReasonEnumValues =
    BuiltSet<StreamView200ResponseReasonEnum>(
      const <StreamView200ResponseReasonEnum>[
        _$streamView200ResponseReasonEnum_bufferOverflow,
        _$streamView200ResponseReasonEnum_replayCap,
        _$streamView200ResponseReasonEnum_resyncRequired,
        _$streamView200ResponseReasonEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<StreamView200ResponseReasonEnum>
_$streamView200ResponseReasonEnumSerializer =
    _$StreamView200ResponseReasonEnumSerializer();

class _$StreamView200ResponseReasonEnumSerializer
    implements PrimitiveSerializer<StreamView200ResponseReasonEnum> {
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
  final Iterable<Type> types = const <Type>[StreamView200ResponseReasonEnum];
  @override
  final String wireName = 'StreamView200ResponseReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    StreamView200ResponseReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StreamView200ResponseReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StreamView200ResponseReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StreamView200Response extends StreamView200Response {
  @override
  final AnyOf anyOf;

  factory _$StreamView200Response([
    void Function(StreamView200ResponseBuilder)? updates,
  ]) => (StreamView200ResponseBuilder()..update(updates))._build();

  _$StreamView200Response._({required this.anyOf}) : super._();
  @override
  StreamView200Response rebuild(
    void Function(StreamView200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StreamView200ResponseBuilder toBuilder() =>
      StreamView200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamView200Response && anyOf == other.anyOf;
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
      r'StreamView200Response',
    )..add('anyOf', anyOf)).toString();
  }
}

class StreamView200ResponseBuilder
    implements Builder<StreamView200Response, StreamView200ResponseBuilder> {
  _$StreamView200Response? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  StreamView200ResponseBuilder() {
    StreamView200Response._defaults(this);
  }

  StreamView200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamView200Response other) {
    _$v = other as _$StreamView200Response;
  }

  @override
  void update(void Function(StreamView200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamView200Response build() => _build();

  _$StreamView200Response _build() {
    final _$result =
        _$v ??
        _$StreamView200Response._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
            anyOf,
            r'StreamView200Response',
            'anyOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
