// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_fcm_message_android.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NativePushPayloadFcmMessageAndroidPriorityEnum
_$nativePushPayloadFcmMessageAndroidPriorityEnum_HIGH =
    const NativePushPayloadFcmMessageAndroidPriorityEnum._('HIGH');
const NativePushPayloadFcmMessageAndroidPriorityEnum
_$nativePushPayloadFcmMessageAndroidPriorityEnum_NORMAL =
    const NativePushPayloadFcmMessageAndroidPriorityEnum._('NORMAL');
const NativePushPayloadFcmMessageAndroidPriorityEnum
_$nativePushPayloadFcmMessageAndroidPriorityEnum_unknownDefaultOpenApi =
    const NativePushPayloadFcmMessageAndroidPriorityEnum._(
      'unknownDefaultOpenApi',
    );

NativePushPayloadFcmMessageAndroidPriorityEnum
_$nativePushPayloadFcmMessageAndroidPriorityEnumValueOf(String name) {
  switch (name) {
    case 'HIGH':
      return _$nativePushPayloadFcmMessageAndroidPriorityEnum_HIGH;
    case 'NORMAL':
      return _$nativePushPayloadFcmMessageAndroidPriorityEnum_NORMAL;
    case 'unknownDefaultOpenApi':
      return _$nativePushPayloadFcmMessageAndroidPriorityEnum_unknownDefaultOpenApi;
    default:
      return _$nativePushPayloadFcmMessageAndroidPriorityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NativePushPayloadFcmMessageAndroidPriorityEnum>
_$nativePushPayloadFcmMessageAndroidPriorityEnumValues =
    BuiltSet<NativePushPayloadFcmMessageAndroidPriorityEnum>(
      const <NativePushPayloadFcmMessageAndroidPriorityEnum>[
        _$nativePushPayloadFcmMessageAndroidPriorityEnum_HIGH,
        _$nativePushPayloadFcmMessageAndroidPriorityEnum_NORMAL,
        _$nativePushPayloadFcmMessageAndroidPriorityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<NativePushPayloadFcmMessageAndroidPriorityEnum>
_$nativePushPayloadFcmMessageAndroidPriorityEnumSerializer =
    _$NativePushPayloadFcmMessageAndroidPriorityEnumSerializer();

class _$NativePushPayloadFcmMessageAndroidPriorityEnumSerializer
    implements
        PrimitiveSerializer<NativePushPayloadFcmMessageAndroidPriorityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'HIGH': 'HIGH',
    'NORMAL': 'NORMAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'HIGH': 'HIGH',
    'NORMAL': 'NORMAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NativePushPayloadFcmMessageAndroidPriorityEnum,
  ];
  @override
  final String wireName = 'NativePushPayloadFcmMessageAndroidPriorityEnum';

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadFcmMessageAndroidPriorityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NativePushPayloadFcmMessageAndroidPriorityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NativePushPayloadFcmMessageAndroidPriorityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NativePushPayloadFcmMessageAndroid
    extends NativePushPayloadFcmMessageAndroid {
  @override
  final NativePushPayloadFcmMessageAndroidPriorityEnum? priority;
  @override
  final String? ttl;
  @override
  final String? collapseKey;

  factory _$NativePushPayloadFcmMessageAndroid([
    void Function(NativePushPayloadFcmMessageAndroidBuilder)? updates,
  ]) => (NativePushPayloadFcmMessageAndroidBuilder()..update(updates))._build();

  _$NativePushPayloadFcmMessageAndroid._({
    this.priority,
    this.ttl,
    this.collapseKey,
  }) : super._();
  @override
  NativePushPayloadFcmMessageAndroid rebuild(
    void Function(NativePushPayloadFcmMessageAndroidBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadFcmMessageAndroidBuilder toBuilder() =>
      NativePushPayloadFcmMessageAndroidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadFcmMessageAndroid &&
        priority == other.priority &&
        ttl == other.ttl &&
        collapseKey == other.collapseKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jc(_$hash, collapseKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadFcmMessageAndroid')
          ..add('priority', priority)
          ..add('ttl', ttl)
          ..add('collapseKey', collapseKey))
        .toString();
  }
}

class NativePushPayloadFcmMessageAndroidBuilder
    implements
        Builder<
          NativePushPayloadFcmMessageAndroid,
          NativePushPayloadFcmMessageAndroidBuilder
        > {
  _$NativePushPayloadFcmMessageAndroid? _$v;

  NativePushPayloadFcmMessageAndroidPriorityEnum? _priority;
  NativePushPayloadFcmMessageAndroidPriorityEnum? get priority =>
      _$this._priority;
  set priority(NativePushPayloadFcmMessageAndroidPriorityEnum? priority) =>
      _$this._priority = priority;

  String? _ttl;
  String? get ttl => _$this._ttl;
  set ttl(String? ttl) => _$this._ttl = ttl;

  String? _collapseKey;
  String? get collapseKey => _$this._collapseKey;
  set collapseKey(String? collapseKey) => _$this._collapseKey = collapseKey;

  NativePushPayloadFcmMessageAndroidBuilder() {
    NativePushPayloadFcmMessageAndroid._defaults(this);
  }

  NativePushPayloadFcmMessageAndroidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _priority = $v.priority;
      _ttl = $v.ttl;
      _collapseKey = $v.collapseKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadFcmMessageAndroid other) {
    _$v = other as _$NativePushPayloadFcmMessageAndroid;
  }

  @override
  void update(
    void Function(NativePushPayloadFcmMessageAndroidBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadFcmMessageAndroid build() => _build();

  _$NativePushPayloadFcmMessageAndroid _build() {
    final _$result =
        _$v ??
        _$NativePushPayloadFcmMessageAndroid._(
          priority: priority,
          ttl: ttl,
          collapseKey: collapseKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
