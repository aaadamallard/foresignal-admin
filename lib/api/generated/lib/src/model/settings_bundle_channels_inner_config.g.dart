// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_bundle_channels_inner_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SettingsBundleChannelsInnerConfigAttachMapEnum
_$settingsBundleChannelsInnerConfigAttachMapEnum_none =
    const SettingsBundleChannelsInnerConfigAttachMapEnum._('none');
const SettingsBundleChannelsInnerConfigAttachMapEnum
_$settingsBundleChannelsInnerConfigAttachMapEnum_static_ =
    const SettingsBundleChannelsInnerConfigAttachMapEnum._('static_');

SettingsBundleChannelsInnerConfigAttachMapEnum
_$settingsBundleChannelsInnerConfigAttachMapEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$settingsBundleChannelsInnerConfigAttachMapEnum_none;
    case 'static_':
      return _$settingsBundleChannelsInnerConfigAttachMapEnum_static_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SettingsBundleChannelsInnerConfigAttachMapEnum>
_$settingsBundleChannelsInnerConfigAttachMapEnumValues =
    BuiltSet<SettingsBundleChannelsInnerConfigAttachMapEnum>(
      const <SettingsBundleChannelsInnerConfigAttachMapEnum>[
        _$settingsBundleChannelsInnerConfigAttachMapEnum_none,
        _$settingsBundleChannelsInnerConfigAttachMapEnum_static_,
      ],
    );

const SettingsBundleChannelsInnerConfigUnitsEnum
_$settingsBundleChannelsInnerConfigUnitsEnum_metric =
    const SettingsBundleChannelsInnerConfigUnitsEnum._('metric');
const SettingsBundleChannelsInnerConfigUnitsEnum
_$settingsBundleChannelsInnerConfigUnitsEnum_imperial =
    const SettingsBundleChannelsInnerConfigUnitsEnum._('imperial');

SettingsBundleChannelsInnerConfigUnitsEnum
_$settingsBundleChannelsInnerConfigUnitsEnumValueOf(String name) {
  switch (name) {
    case 'metric':
      return _$settingsBundleChannelsInnerConfigUnitsEnum_metric;
    case 'imperial':
      return _$settingsBundleChannelsInnerConfigUnitsEnum_imperial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SettingsBundleChannelsInnerConfigUnitsEnum>
_$settingsBundleChannelsInnerConfigUnitsEnumValues =
    BuiltSet<SettingsBundleChannelsInnerConfigUnitsEnum>(
      const <SettingsBundleChannelsInnerConfigUnitsEnum>[
        _$settingsBundleChannelsInnerConfigUnitsEnum_metric,
        _$settingsBundleChannelsInnerConfigUnitsEnum_imperial,
      ],
    );

Serializer<SettingsBundleChannelsInnerConfigAttachMapEnum>
_$settingsBundleChannelsInnerConfigAttachMapEnumSerializer =
    _$SettingsBundleChannelsInnerConfigAttachMapEnumSerializer();
Serializer<SettingsBundleChannelsInnerConfigUnitsEnum>
_$settingsBundleChannelsInnerConfigUnitsEnumSerializer =
    _$SettingsBundleChannelsInnerConfigUnitsEnumSerializer();

class _$SettingsBundleChannelsInnerConfigAttachMapEnumSerializer
    implements
        PrimitiveSerializer<SettingsBundleChannelsInnerConfigAttachMapEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'static_': 'static',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'static': 'static_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SettingsBundleChannelsInnerConfigAttachMapEnum,
  ];
  @override
  final String wireName = 'SettingsBundleChannelsInnerConfigAttachMapEnum';

  @override
  Object serialize(
    Serializers serializers,
    SettingsBundleChannelsInnerConfigAttachMapEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SettingsBundleChannelsInnerConfigAttachMapEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SettingsBundleChannelsInnerConfigAttachMapEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SettingsBundleChannelsInnerConfigUnitsEnumSerializer
    implements PrimitiveSerializer<SettingsBundleChannelsInnerConfigUnitsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'metric': 'metric',
    'imperial': 'imperial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'metric': 'metric',
    'imperial': 'imperial',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SettingsBundleChannelsInnerConfigUnitsEnum,
  ];
  @override
  final String wireName = 'SettingsBundleChannelsInnerConfigUnitsEnum';

  @override
  Object serialize(
    Serializers serializers,
    SettingsBundleChannelsInnerConfigUnitsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SettingsBundleChannelsInnerConfigUnitsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SettingsBundleChannelsInnerConfigUnitsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SettingsBundleChannelsInnerConfig
    extends SettingsBundleChannelsInnerConfig {
  @override
  final SettingsBundleChannelsInnerConfigAttachMapEnum? attachMap;
  @override
  final BuiltList<String>? mapProducts;
  @override
  final num? mapRadiusKm;
  @override
  final int? maxAttachmentBytes;
  @override
  final ChannelActionsConfig? actions;
  @override
  final BuiltList<int>? allowedUserIds;
  @override
  final JsonObject? allowedSenders;
  @override
  final bool? privatePayload;
  @override
  final SettingsBundleChannelsInnerConfigUnitsEnum? units;

  factory _$SettingsBundleChannelsInnerConfig([
    void Function(SettingsBundleChannelsInnerConfigBuilder)? updates,
  ]) => (SettingsBundleChannelsInnerConfigBuilder()..update(updates))._build();

  _$SettingsBundleChannelsInnerConfig._({
    this.attachMap,
    this.mapProducts,
    this.mapRadiusKm,
    this.maxAttachmentBytes,
    this.actions,
    this.allowedUserIds,
    this.allowedSenders,
    this.privatePayload,
    this.units,
  }) : super._();
  @override
  SettingsBundleChannelsInnerConfig rebuild(
    void Function(SettingsBundleChannelsInnerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SettingsBundleChannelsInnerConfigBuilder toBuilder() =>
      SettingsBundleChannelsInnerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsBundleChannelsInnerConfig &&
        attachMap == other.attachMap &&
        mapProducts == other.mapProducts &&
        mapRadiusKm == other.mapRadiusKm &&
        maxAttachmentBytes == other.maxAttachmentBytes &&
        actions == other.actions &&
        allowedUserIds == other.allowedUserIds &&
        allowedSenders == other.allowedSenders &&
        privatePayload == other.privatePayload &&
        units == other.units;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachMap.hashCode);
    _$hash = $jc(_$hash, mapProducts.hashCode);
    _$hash = $jc(_$hash, mapRadiusKm.hashCode);
    _$hash = $jc(_$hash, maxAttachmentBytes.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jc(_$hash, allowedUserIds.hashCode);
    _$hash = $jc(_$hash, allowedSenders.hashCode);
    _$hash = $jc(_$hash, privatePayload.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsBundleChannelsInnerConfig')
          ..add('attachMap', attachMap)
          ..add('mapProducts', mapProducts)
          ..add('mapRadiusKm', mapRadiusKm)
          ..add('maxAttachmentBytes', maxAttachmentBytes)
          ..add('actions', actions)
          ..add('allowedUserIds', allowedUserIds)
          ..add('allowedSenders', allowedSenders)
          ..add('privatePayload', privatePayload)
          ..add('units', units))
        .toString();
  }
}

class SettingsBundleChannelsInnerConfigBuilder
    implements
        Builder<
          SettingsBundleChannelsInnerConfig,
          SettingsBundleChannelsInnerConfigBuilder
        > {
  _$SettingsBundleChannelsInnerConfig? _$v;

  SettingsBundleChannelsInnerConfigAttachMapEnum? _attachMap;
  SettingsBundleChannelsInnerConfigAttachMapEnum? get attachMap =>
      _$this._attachMap;
  set attachMap(SettingsBundleChannelsInnerConfigAttachMapEnum? attachMap) =>
      _$this._attachMap = attachMap;

  ListBuilder<String>? _mapProducts;
  ListBuilder<String> get mapProducts =>
      _$this._mapProducts ??= ListBuilder<String>();
  set mapProducts(ListBuilder<String>? mapProducts) =>
      _$this._mapProducts = mapProducts;

  num? _mapRadiusKm;
  num? get mapRadiusKm => _$this._mapRadiusKm;
  set mapRadiusKm(num? mapRadiusKm) => _$this._mapRadiusKm = mapRadiusKm;

  int? _maxAttachmentBytes;
  int? get maxAttachmentBytes => _$this._maxAttachmentBytes;
  set maxAttachmentBytes(int? maxAttachmentBytes) =>
      _$this._maxAttachmentBytes = maxAttachmentBytes;

  ChannelActionsConfigBuilder? _actions;
  ChannelActionsConfigBuilder get actions =>
      _$this._actions ??= ChannelActionsConfigBuilder();
  set actions(ChannelActionsConfigBuilder? actions) =>
      _$this._actions = actions;

  ListBuilder<int>? _allowedUserIds;
  ListBuilder<int> get allowedUserIds =>
      _$this._allowedUserIds ??= ListBuilder<int>();
  set allowedUserIds(ListBuilder<int>? allowedUserIds) =>
      _$this._allowedUserIds = allowedUserIds;

  JsonObject? _allowedSenders;
  JsonObject? get allowedSenders => _$this._allowedSenders;
  set allowedSenders(JsonObject? allowedSenders) =>
      _$this._allowedSenders = allowedSenders;

  bool? _privatePayload;
  bool? get privatePayload => _$this._privatePayload;
  set privatePayload(bool? privatePayload) =>
      _$this._privatePayload = privatePayload;

  SettingsBundleChannelsInnerConfigUnitsEnum? _units;
  SettingsBundleChannelsInnerConfigUnitsEnum? get units => _$this._units;
  set units(SettingsBundleChannelsInnerConfigUnitsEnum? units) =>
      _$this._units = units;

  SettingsBundleChannelsInnerConfigBuilder() {
    SettingsBundleChannelsInnerConfig._defaults(this);
  }

  SettingsBundleChannelsInnerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachMap = $v.attachMap;
      _mapProducts = $v.mapProducts?.toBuilder();
      _mapRadiusKm = $v.mapRadiusKm;
      _maxAttachmentBytes = $v.maxAttachmentBytes;
      _actions = $v.actions?.toBuilder();
      _allowedUserIds = $v.allowedUserIds?.toBuilder();
      _allowedSenders = $v.allowedSenders;
      _privatePayload = $v.privatePayload;
      _units = $v.units;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsBundleChannelsInnerConfig other) {
    _$v = other as _$SettingsBundleChannelsInnerConfig;
  }

  @override
  void update(
    void Function(SettingsBundleChannelsInnerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SettingsBundleChannelsInnerConfig build() => _build();

  _$SettingsBundleChannelsInnerConfig _build() {
    _$SettingsBundleChannelsInnerConfig _$result;
    try {
      _$result =
          _$v ??
          _$SettingsBundleChannelsInnerConfig._(
            attachMap: attachMap,
            mapProducts: _mapProducts?.build(),
            mapRadiusKm: mapRadiusKm,
            maxAttachmentBytes: maxAttachmentBytes,
            actions: _actions?.build(),
            allowedUserIds: _allowedUserIds?.build(),
            allowedSenders: allowedSenders,
            privatePayload: privatePayload,
            units: units,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapProducts';
        _mapProducts?.build();

        _$failedField = 'actions';
        _actions?.build();
        _$failedField = 'allowedUserIds';
        _allowedUserIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SettingsBundleChannelsInnerConfig',
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
