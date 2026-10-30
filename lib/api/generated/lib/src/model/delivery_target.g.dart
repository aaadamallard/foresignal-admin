// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryTargetKindEnum _$deliveryTargetKindEnum_channel =
    const DeliveryTargetKindEnum._('channel');
const DeliveryTargetKindEnum _$deliveryTargetKindEnum_website =
    const DeliveryTargetKindEnum._('website');
const DeliveryTargetKindEnum _$deliveryTargetKindEnum_podcast =
    const DeliveryTargetKindEnum._('podcast');
const DeliveryTargetKindEnum _$deliveryTargetKindEnum_unknownDefaultOpenApi =
    const DeliveryTargetKindEnum._('unknownDefaultOpenApi');

DeliveryTargetKindEnum _$deliveryTargetKindEnumValueOf(String name) {
  switch (name) {
    case 'channel':
      return _$deliveryTargetKindEnum_channel;
    case 'website':
      return _$deliveryTargetKindEnum_website;
    case 'podcast':
      return _$deliveryTargetKindEnum_podcast;
    case 'unknownDefaultOpenApi':
      return _$deliveryTargetKindEnum_unknownDefaultOpenApi;
    default:
      return _$deliveryTargetKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DeliveryTargetKindEnum> _$deliveryTargetKindEnumValues =
    BuiltSet<DeliveryTargetKindEnum>(const <DeliveryTargetKindEnum>[
      _$deliveryTargetKindEnum_channel,
      _$deliveryTargetKindEnum_website,
      _$deliveryTargetKindEnum_podcast,
      _$deliveryTargetKindEnum_unknownDefaultOpenApi,
    ]);

const DeliveryTargetFormatEnum _$deliveryTargetFormatEnum_email =
    const DeliveryTargetFormatEnum._('email');
const DeliveryTargetFormatEnum _$deliveryTargetFormatEnum_push =
    const DeliveryTargetFormatEnum._('push');
const DeliveryTargetFormatEnum _$deliveryTargetFormatEnum_alert =
    const DeliveryTargetFormatEnum._('alert');
const DeliveryTargetFormatEnum _$deliveryTargetFormatEnum_html =
    const DeliveryTargetFormatEnum._('html');
const DeliveryTargetFormatEnum _$deliveryTargetFormatEnum_audio =
    const DeliveryTargetFormatEnum._('audio');
const DeliveryTargetFormatEnum
_$deliveryTargetFormatEnum_unknownDefaultOpenApi =
    const DeliveryTargetFormatEnum._('unknownDefaultOpenApi');

DeliveryTargetFormatEnum _$deliveryTargetFormatEnumValueOf(String name) {
  switch (name) {
    case 'email':
      return _$deliveryTargetFormatEnum_email;
    case 'push':
      return _$deliveryTargetFormatEnum_push;
    case 'alert':
      return _$deliveryTargetFormatEnum_alert;
    case 'html':
      return _$deliveryTargetFormatEnum_html;
    case 'audio':
      return _$deliveryTargetFormatEnum_audio;
    case 'unknownDefaultOpenApi':
      return _$deliveryTargetFormatEnum_unknownDefaultOpenApi;
    default:
      return _$deliveryTargetFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DeliveryTargetFormatEnum> _$deliveryTargetFormatEnumValues =
    BuiltSet<DeliveryTargetFormatEnum>(const <DeliveryTargetFormatEnum>[
      _$deliveryTargetFormatEnum_email,
      _$deliveryTargetFormatEnum_push,
      _$deliveryTargetFormatEnum_alert,
      _$deliveryTargetFormatEnum_html,
      _$deliveryTargetFormatEnum_audio,
      _$deliveryTargetFormatEnum_unknownDefaultOpenApi,
    ]);

Serializer<DeliveryTargetKindEnum> _$deliveryTargetKindEnumSerializer =
    _$DeliveryTargetKindEnumSerializer();
Serializer<DeliveryTargetFormatEnum> _$deliveryTargetFormatEnumSerializer =
    _$DeliveryTargetFormatEnumSerializer();

class _$DeliveryTargetKindEnumSerializer
    implements PrimitiveSerializer<DeliveryTargetKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'channel': 'channel',
    'website': 'website',
    'podcast': 'podcast',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'channel': 'channel',
    'website': 'website',
    'podcast': 'podcast',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeliveryTargetKindEnum];
  @override
  final String wireName = 'DeliveryTargetKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeliveryTargetKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeliveryTargetKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeliveryTargetKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeliveryTargetFormatEnumSerializer
    implements PrimitiveSerializer<DeliveryTargetFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'email': 'email',
    'push': 'push',
    'alert': 'alert',
    'html': 'html',
    'audio': 'audio',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'email': 'email',
    'push': 'push',
    'alert': 'alert',
    'html': 'html',
    'audio': 'audio',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeliveryTargetFormatEnum];
  @override
  final String wireName = 'DeliveryTargetFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeliveryTargetFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeliveryTargetFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeliveryTargetFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeliveryTarget extends DeliveryTarget {
  @override
  final DeliveryTargetKindEnum kind;
  @override
  final String? channelId;
  @override
  final DeliveryTargetFormatEnum format;
  @override
  final BuiltMap<String, JsonObject?>? options;

  factory _$DeliveryTarget([void Function(DeliveryTargetBuilder)? updates]) =>
      (DeliveryTargetBuilder()..update(updates))._build();

  _$DeliveryTarget._({
    required this.kind,
    this.channelId,
    required this.format,
    this.options,
  }) : super._();
  @override
  DeliveryTarget rebuild(void Function(DeliveryTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryTargetBuilder toBuilder() => DeliveryTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryTarget &&
        kind == other.kind &&
        channelId == other.channelId &&
        format == other.format &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, channelId.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryTarget')
          ..add('kind', kind)
          ..add('channelId', channelId)
          ..add('format', format)
          ..add('options', options))
        .toString();
  }
}

class DeliveryTargetBuilder
    implements Builder<DeliveryTarget, DeliveryTargetBuilder> {
  _$DeliveryTarget? _$v;

  DeliveryTargetKindEnum? _kind;
  DeliveryTargetKindEnum? get kind => _$this._kind;
  set kind(DeliveryTargetKindEnum? kind) => _$this._kind = kind;

  String? _channelId;
  String? get channelId => _$this._channelId;
  set channelId(String? channelId) => _$this._channelId = channelId;

  DeliveryTargetFormatEnum? _format;
  DeliveryTargetFormatEnum? get format => _$this._format;
  set format(DeliveryTargetFormatEnum? format) => _$this._format = format;

  MapBuilder<String, JsonObject?>? _options;
  MapBuilder<String, JsonObject?> get options =>
      _$this._options ??= MapBuilder<String, JsonObject?>();
  set options(MapBuilder<String, JsonObject?>? options) =>
      _$this._options = options;

  DeliveryTargetBuilder() {
    DeliveryTarget._defaults(this);
  }

  DeliveryTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _channelId = $v.channelId;
      _format = $v.format;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryTarget other) {
    _$v = other as _$DeliveryTarget;
  }

  @override
  void update(void Function(DeliveryTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryTarget build() => _build();

  _$DeliveryTarget _build() {
    _$DeliveryTarget _$result;
    try {
      _$result =
          _$v ??
          _$DeliveryTarget._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'DeliveryTarget',
              'kind',
            ),
            channelId: channelId,
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'DeliveryTarget',
              'format',
            ),
            options: _options?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeliveryTarget',
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
