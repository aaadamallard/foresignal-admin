// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_apns_aps.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NativePushPayloadApnsApsSoundEnum
_$nativePushPayloadApnsApsSoundEnum_default_ =
    const NativePushPayloadApnsApsSoundEnum._('default_');
const NativePushPayloadApnsApsSoundEnum
_$nativePushPayloadApnsApsSoundEnum_unknownDefaultOpenApi =
    const NativePushPayloadApnsApsSoundEnum._('unknownDefaultOpenApi');

NativePushPayloadApnsApsSoundEnum _$nativePushPayloadApnsApsSoundEnumValueOf(
  String name,
) {
  switch (name) {
    case 'default_':
      return _$nativePushPayloadApnsApsSoundEnum_default_;
    case 'unknownDefaultOpenApi':
      return _$nativePushPayloadApnsApsSoundEnum_unknownDefaultOpenApi;
    default:
      return _$nativePushPayloadApnsApsSoundEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NativePushPayloadApnsApsSoundEnum>
_$nativePushPayloadApnsApsSoundEnumValues =
    BuiltSet<NativePushPayloadApnsApsSoundEnum>(
      const <NativePushPayloadApnsApsSoundEnum>[
        _$nativePushPayloadApnsApsSoundEnum_default_,
        _$nativePushPayloadApnsApsSoundEnum_unknownDefaultOpenApi,
      ],
    );

const NativePushPayloadApnsApsMutableContentEnum
_$nativePushPayloadApnsApsMutableContentEnum_number1 =
    const NativePushPayloadApnsApsMutableContentEnum._('number1');
const NativePushPayloadApnsApsMutableContentEnum
_$nativePushPayloadApnsApsMutableContentEnum_unknownDefaultOpenApi =
    const NativePushPayloadApnsApsMutableContentEnum._('unknownDefaultOpenApi');

NativePushPayloadApnsApsMutableContentEnum
_$nativePushPayloadApnsApsMutableContentEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$nativePushPayloadApnsApsMutableContentEnum_number1;
    case 'unknownDefaultOpenApi':
      return _$nativePushPayloadApnsApsMutableContentEnum_unknownDefaultOpenApi;
    default:
      return _$nativePushPayloadApnsApsMutableContentEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NativePushPayloadApnsApsMutableContentEnum>
_$nativePushPayloadApnsApsMutableContentEnumValues =
    BuiltSet<NativePushPayloadApnsApsMutableContentEnum>(
      const <NativePushPayloadApnsApsMutableContentEnum>[
        _$nativePushPayloadApnsApsMutableContentEnum_number1,
        _$nativePushPayloadApnsApsMutableContentEnum_unknownDefaultOpenApi,
      ],
    );

const NativePushPayloadApnsApsInterruptionLevelEnum
_$nativePushPayloadApnsApsInterruptionLevelEnum_passive =
    const NativePushPayloadApnsApsInterruptionLevelEnum._('passive');
const NativePushPayloadApnsApsInterruptionLevelEnum
_$nativePushPayloadApnsApsInterruptionLevelEnum_active =
    const NativePushPayloadApnsApsInterruptionLevelEnum._('active');
const NativePushPayloadApnsApsInterruptionLevelEnum
_$nativePushPayloadApnsApsInterruptionLevelEnum_timeSensitive =
    const NativePushPayloadApnsApsInterruptionLevelEnum._('timeSensitive');
const NativePushPayloadApnsApsInterruptionLevelEnum
_$nativePushPayloadApnsApsInterruptionLevelEnum_unknownDefaultOpenApi =
    const NativePushPayloadApnsApsInterruptionLevelEnum._(
      'unknownDefaultOpenApi',
    );

NativePushPayloadApnsApsInterruptionLevelEnum
_$nativePushPayloadApnsApsInterruptionLevelEnumValueOf(String name) {
  switch (name) {
    case 'passive':
      return _$nativePushPayloadApnsApsInterruptionLevelEnum_passive;
    case 'active':
      return _$nativePushPayloadApnsApsInterruptionLevelEnum_active;
    case 'timeSensitive':
      return _$nativePushPayloadApnsApsInterruptionLevelEnum_timeSensitive;
    case 'unknownDefaultOpenApi':
      return _$nativePushPayloadApnsApsInterruptionLevelEnum_unknownDefaultOpenApi;
    default:
      return _$nativePushPayloadApnsApsInterruptionLevelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NativePushPayloadApnsApsInterruptionLevelEnum>
_$nativePushPayloadApnsApsInterruptionLevelEnumValues =
    BuiltSet<NativePushPayloadApnsApsInterruptionLevelEnum>(
      const <NativePushPayloadApnsApsInterruptionLevelEnum>[
        _$nativePushPayloadApnsApsInterruptionLevelEnum_passive,
        _$nativePushPayloadApnsApsInterruptionLevelEnum_active,
        _$nativePushPayloadApnsApsInterruptionLevelEnum_timeSensitive,
        _$nativePushPayloadApnsApsInterruptionLevelEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<NativePushPayloadApnsApsSoundEnum>
_$nativePushPayloadApnsApsSoundEnumSerializer =
    _$NativePushPayloadApnsApsSoundEnumSerializer();
Serializer<NativePushPayloadApnsApsMutableContentEnum>
_$nativePushPayloadApnsApsMutableContentEnumSerializer =
    _$NativePushPayloadApnsApsMutableContentEnumSerializer();
Serializer<NativePushPayloadApnsApsInterruptionLevelEnum>
_$nativePushPayloadApnsApsInterruptionLevelEnumSerializer =
    _$NativePushPayloadApnsApsInterruptionLevelEnumSerializer();

class _$NativePushPayloadApnsApsSoundEnumSerializer
    implements PrimitiveSerializer<NativePushPayloadApnsApsSoundEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NativePushPayloadApnsApsSoundEnum];
  @override
  final String wireName = 'NativePushPayloadApnsApsSoundEnum';

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsApsSoundEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NativePushPayloadApnsApsSoundEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NativePushPayloadApnsApsSoundEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NativePushPayloadApnsApsMutableContentEnumSerializer
    implements PrimitiveSerializer<NativePushPayloadApnsApsMutableContentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NativePushPayloadApnsApsMutableContentEnum,
  ];
  @override
  final String wireName = 'NativePushPayloadApnsApsMutableContentEnum';

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsApsMutableContentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NativePushPayloadApnsApsMutableContentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NativePushPayloadApnsApsMutableContentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NativePushPayloadApnsApsInterruptionLevelEnumSerializer
    implements
        PrimitiveSerializer<NativePushPayloadApnsApsInterruptionLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passive': 'passive',
    'active': 'active',
    'timeSensitive': 'time-sensitive',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passive': 'passive',
    'active': 'active',
    'time-sensitive': 'timeSensitive',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NativePushPayloadApnsApsInterruptionLevelEnum,
  ];
  @override
  final String wireName = 'NativePushPayloadApnsApsInterruptionLevelEnum';

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsApsInterruptionLevelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NativePushPayloadApnsApsInterruptionLevelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NativePushPayloadApnsApsInterruptionLevelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NativePushPayloadApnsAps extends NativePushPayloadApnsAps {
  @override
  final NativePushPayloadApnsApsAlert alert;
  @override
  final NativePushPayloadApnsApsSoundEnum? sound;
  @override
  final NativePushPayloadApnsApsMutableContentEnum? mutableContent;
  @override
  final NativePushPayloadApnsApsInterruptionLevelEnum? interruptionLevel;
  @override
  final String? threadId;
  @override
  final String? category;
  @override
  final int? badge;

  factory _$NativePushPayloadApnsAps([
    void Function(NativePushPayloadApnsApsBuilder)? updates,
  ]) => (NativePushPayloadApnsApsBuilder()..update(updates))._build();

  _$NativePushPayloadApnsAps._({
    required this.alert,
    this.sound,
    this.mutableContent,
    this.interruptionLevel,
    this.threadId,
    this.category,
    this.badge,
  }) : super._();
  @override
  NativePushPayloadApnsAps rebuild(
    void Function(NativePushPayloadApnsApsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadApnsApsBuilder toBuilder() =>
      NativePushPayloadApnsApsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadApnsAps &&
        alert == other.alert &&
        sound == other.sound &&
        mutableContent == other.mutableContent &&
        interruptionLevel == other.interruptionLevel &&
        threadId == other.threadId &&
        category == other.category &&
        badge == other.badge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, sound.hashCode);
    _$hash = $jc(_$hash, mutableContent.hashCode);
    _$hash = $jc(_$hash, interruptionLevel.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, badge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadApnsAps')
          ..add('alert', alert)
          ..add('sound', sound)
          ..add('mutableContent', mutableContent)
          ..add('interruptionLevel', interruptionLevel)
          ..add('threadId', threadId)
          ..add('category', category)
          ..add('badge', badge))
        .toString();
  }
}

class NativePushPayloadApnsApsBuilder
    implements
        Builder<NativePushPayloadApnsAps, NativePushPayloadApnsApsBuilder> {
  _$NativePushPayloadApnsAps? _$v;

  NativePushPayloadApnsApsAlertBuilder? _alert;
  NativePushPayloadApnsApsAlertBuilder get alert =>
      _$this._alert ??= NativePushPayloadApnsApsAlertBuilder();
  set alert(NativePushPayloadApnsApsAlertBuilder? alert) =>
      _$this._alert = alert;

  NativePushPayloadApnsApsSoundEnum? _sound;
  NativePushPayloadApnsApsSoundEnum? get sound => _$this._sound;
  set sound(NativePushPayloadApnsApsSoundEnum? sound) => _$this._sound = sound;

  NativePushPayloadApnsApsMutableContentEnum? _mutableContent;
  NativePushPayloadApnsApsMutableContentEnum? get mutableContent =>
      _$this._mutableContent;
  set mutableContent(
    NativePushPayloadApnsApsMutableContentEnum? mutableContent,
  ) => _$this._mutableContent = mutableContent;

  NativePushPayloadApnsApsInterruptionLevelEnum? _interruptionLevel;
  NativePushPayloadApnsApsInterruptionLevelEnum? get interruptionLevel =>
      _$this._interruptionLevel;
  set interruptionLevel(
    NativePushPayloadApnsApsInterruptionLevelEnum? interruptionLevel,
  ) => _$this._interruptionLevel = interruptionLevel;

  String? _threadId;
  String? get threadId => _$this._threadId;
  set threadId(String? threadId) => _$this._threadId = threadId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _badge;
  int? get badge => _$this._badge;
  set badge(int? badge) => _$this._badge = badge;

  NativePushPayloadApnsApsBuilder() {
    NativePushPayloadApnsAps._defaults(this);
  }

  NativePushPayloadApnsApsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alert = $v.alert.toBuilder();
      _sound = $v.sound;
      _mutableContent = $v.mutableContent;
      _interruptionLevel = $v.interruptionLevel;
      _threadId = $v.threadId;
      _category = $v.category;
      _badge = $v.badge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadApnsAps other) {
    _$v = other as _$NativePushPayloadApnsAps;
  }

  @override
  void update(void Function(NativePushPayloadApnsApsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadApnsAps build() => _build();

  _$NativePushPayloadApnsAps _build() {
    _$NativePushPayloadApnsAps _$result;
    try {
      _$result =
          _$v ??
          _$NativePushPayloadApnsAps._(
            alert: alert.build(),
            sound: sound,
            mutableContent: mutableContent,
            interruptionLevel: interruptionLevel,
            threadId: threadId,
            category: category,
            badge: badge,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alert';
        alert.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NativePushPayloadApnsAps',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
