// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_track_record_overrides_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnum_A =
    const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._('A');
const SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnum_B =
    const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._('B');
const SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnum_C =
    const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._('C');
const SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnum_D =
    const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._('D');
const SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnum_E =
    const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._('E');
const SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnum_F =
    const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._('F');
const SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnum_unknownDefaultOpenApi =
    const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._(
      'unknownDefaultOpenApi',
    );

SocialSettingsTrackRecordOverridesInnerReliabilityEnum
_$socialSettingsTrackRecordOverridesInnerReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_A;
    case 'B':
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_B;
    case 'C':
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_C;
    case 'D':
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_D;
    case 'E':
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_E;
    case 'F':
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_F;
    case 'unknownDefaultOpenApi':
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_unknownDefaultOpenApi;
    default:
      return _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialSettingsTrackRecordOverridesInnerReliabilityEnum>
_$socialSettingsTrackRecordOverridesInnerReliabilityEnumValues =
    BuiltSet<SocialSettingsTrackRecordOverridesInnerReliabilityEnum>(const <
      SocialSettingsTrackRecordOverridesInnerReliabilityEnum
    >[
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_A,
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_B,
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_C,
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_D,
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_E,
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_F,
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialSettingsTrackRecordOverridesInnerReliabilityEnum>
_$socialSettingsTrackRecordOverridesInnerReliabilityEnumSerializer =
    _$SocialSettingsTrackRecordOverridesInnerReliabilityEnumSerializer();

class _$SocialSettingsTrackRecordOverridesInnerReliabilityEnumSerializer
    implements
        PrimitiveSerializer<
          SocialSettingsTrackRecordOverridesInnerReliabilityEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SocialSettingsTrackRecordOverridesInnerReliabilityEnum,
  ];
  @override
  final String wireName =
      'SocialSettingsTrackRecordOverridesInnerReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsTrackRecordOverridesInnerReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialSettingsTrackRecordOverridesInnerReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialSettingsTrackRecordOverridesInnerReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialSettingsTrackRecordOverridesInner
    extends SocialSettingsTrackRecordOverridesInner {
  @override
  final String platform;
  @override
  final String? account;
  @override
  final String? channel;
  @override
  final SocialSettingsTrackRecordOverridesInnerReliabilityEnum reliability;
  @override
  final String? note;

  factory _$SocialSettingsTrackRecordOverridesInner([
    void Function(SocialSettingsTrackRecordOverridesInnerBuilder)? updates,
  ]) => (SocialSettingsTrackRecordOverridesInnerBuilder()..update(updates))
      ._build();

  _$SocialSettingsTrackRecordOverridesInner._({
    required this.platform,
    this.account,
    this.channel,
    required this.reliability,
    this.note,
  }) : super._();
  @override
  SocialSettingsTrackRecordOverridesInner rebuild(
    void Function(SocialSettingsTrackRecordOverridesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialSettingsTrackRecordOverridesInnerBuilder toBuilder() =>
      SocialSettingsTrackRecordOverridesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsTrackRecordOverridesInner &&
        platform == other.platform &&
        account == other.account &&
        channel == other.channel &&
        reliability == other.reliability &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SocialSettingsTrackRecordOverridesInner',
          )
          ..add('platform', platform)
          ..add('account', account)
          ..add('channel', channel)
          ..add('reliability', reliability)
          ..add('note', note))
        .toString();
  }
}

class SocialSettingsTrackRecordOverridesInnerBuilder
    implements
        Builder<
          SocialSettingsTrackRecordOverridesInner,
          SocialSettingsTrackRecordOverridesInnerBuilder
        > {
  _$SocialSettingsTrackRecordOverridesInner? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

  SocialSettingsTrackRecordOverridesInnerReliabilityEnum? _reliability;
  SocialSettingsTrackRecordOverridesInnerReliabilityEnum? get reliability =>
      _$this._reliability;
  set reliability(
    SocialSettingsTrackRecordOverridesInnerReliabilityEnum? reliability,
  ) => _$this._reliability = reliability;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  SocialSettingsTrackRecordOverridesInnerBuilder() {
    SocialSettingsTrackRecordOverridesInner._defaults(this);
  }

  SocialSettingsTrackRecordOverridesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _account = $v.account;
      _channel = $v.channel;
      _reliability = $v.reliability;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsTrackRecordOverridesInner other) {
    _$v = other as _$SocialSettingsTrackRecordOverridesInner;
  }

  @override
  void update(
    void Function(SocialSettingsTrackRecordOverridesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsTrackRecordOverridesInner build() => _build();

  _$SocialSettingsTrackRecordOverridesInner _build() {
    final _$result =
        _$v ??
        _$SocialSettingsTrackRecordOverridesInner._(
          platform: BuiltValueNullFieldError.checkNotNull(
            platform,
            r'SocialSettingsTrackRecordOverridesInner',
            'platform',
          ),
          account: account,
          channel: channel,
          reliability: BuiltValueNullFieldError.checkNotNull(
            reliability,
            r'SocialSettingsTrackRecordOverridesInner',
            'reliability',
          ),
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
