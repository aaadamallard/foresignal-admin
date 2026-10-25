// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_feed_item_foresignal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JsonFeedItemForesignalSeverityEnum
_$jsonFeedItemForesignalSeverityEnum_info =
    const JsonFeedItemForesignalSeverityEnum._('info');
const JsonFeedItemForesignalSeverityEnum
_$jsonFeedItemForesignalSeverityEnum_warning =
    const JsonFeedItemForesignalSeverityEnum._('warning');
const JsonFeedItemForesignalSeverityEnum
_$jsonFeedItemForesignalSeverityEnum_critical =
    const JsonFeedItemForesignalSeverityEnum._('critical');
const JsonFeedItemForesignalSeverityEnum
_$jsonFeedItemForesignalSeverityEnum_unknownDefaultOpenApi =
    const JsonFeedItemForesignalSeverityEnum._('unknownDefaultOpenApi');

JsonFeedItemForesignalSeverityEnum _$jsonFeedItemForesignalSeverityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'info':
      return _$jsonFeedItemForesignalSeverityEnum_info;
    case 'warning':
      return _$jsonFeedItemForesignalSeverityEnum_warning;
    case 'critical':
      return _$jsonFeedItemForesignalSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$jsonFeedItemForesignalSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$jsonFeedItemForesignalSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<JsonFeedItemForesignalSeverityEnum>
_$jsonFeedItemForesignalSeverityEnumValues =
    BuiltSet<JsonFeedItemForesignalSeverityEnum>(
      const <JsonFeedItemForesignalSeverityEnum>[
        _$jsonFeedItemForesignalSeverityEnum_info,
        _$jsonFeedItemForesignalSeverityEnum_warning,
        _$jsonFeedItemForesignalSeverityEnum_critical,
        _$jsonFeedItemForesignalSeverityEnum_unknownDefaultOpenApi,
      ],
    );

const JsonFeedItemForesignalStateEnum _$jsonFeedItemForesignalStateEnum_firing =
    const JsonFeedItemForesignalStateEnum._('firing');
const JsonFeedItemForesignalStateEnum
_$jsonFeedItemForesignalStateEnum_acknowledged =
    const JsonFeedItemForesignalStateEnum._('acknowledged');
const JsonFeedItemForesignalStateEnum
_$jsonFeedItemForesignalStateEnum_resolved =
    const JsonFeedItemForesignalStateEnum._('resolved');
const JsonFeedItemForesignalStateEnum
_$jsonFeedItemForesignalStateEnum_unknownDefaultOpenApi =
    const JsonFeedItemForesignalStateEnum._('unknownDefaultOpenApi');

JsonFeedItemForesignalStateEnum _$jsonFeedItemForesignalStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'firing':
      return _$jsonFeedItemForesignalStateEnum_firing;
    case 'acknowledged':
      return _$jsonFeedItemForesignalStateEnum_acknowledged;
    case 'resolved':
      return _$jsonFeedItemForesignalStateEnum_resolved;
    case 'unknownDefaultOpenApi':
      return _$jsonFeedItemForesignalStateEnum_unknownDefaultOpenApi;
    default:
      return _$jsonFeedItemForesignalStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<JsonFeedItemForesignalStateEnum>
_$jsonFeedItemForesignalStateEnumValues =
    BuiltSet<JsonFeedItemForesignalStateEnum>(
      const <JsonFeedItemForesignalStateEnum>[
        _$jsonFeedItemForesignalStateEnum_firing,
        _$jsonFeedItemForesignalStateEnum_acknowledged,
        _$jsonFeedItemForesignalStateEnum_resolved,
        _$jsonFeedItemForesignalStateEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<JsonFeedItemForesignalSeverityEnum>
_$jsonFeedItemForesignalSeverityEnumSerializer =
    _$JsonFeedItemForesignalSeverityEnumSerializer();
Serializer<JsonFeedItemForesignalStateEnum>
_$jsonFeedItemForesignalStateEnumSerializer =
    _$JsonFeedItemForesignalStateEnumSerializer();

class _$JsonFeedItemForesignalSeverityEnumSerializer
    implements PrimitiveSerializer<JsonFeedItemForesignalSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[JsonFeedItemForesignalSeverityEnum];
  @override
  final String wireName = 'JsonFeedItemForesignalSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    JsonFeedItemForesignalSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JsonFeedItemForesignalSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JsonFeedItemForesignalSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$JsonFeedItemForesignalStateEnumSerializer
    implements PrimitiveSerializer<JsonFeedItemForesignalStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[JsonFeedItemForesignalStateEnum];
  @override
  final String wireName = 'JsonFeedItemForesignalStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    JsonFeedItemForesignalStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JsonFeedItemForesignalStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JsonFeedItemForesignalStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$JsonFeedItemForesignal extends JsonFeedItemForesignal {
  @override
  final JsonFeedItemForesignalSeverityEnum? severity;
  @override
  final JsonFeedItemForesignalStateEnum? state;
  @override
  final String? sourceId;
  @override
  final String? externalId;
  @override
  final Geometry? geometry;

  factory _$JsonFeedItemForesignal([
    void Function(JsonFeedItemForesignalBuilder)? updates,
  ]) => (JsonFeedItemForesignalBuilder()..update(updates))._build();

  _$JsonFeedItemForesignal._({
    this.severity,
    this.state,
    this.sourceId,
    this.externalId,
    this.geometry,
  }) : super._();
  @override
  JsonFeedItemForesignal rebuild(
    void Function(JsonFeedItemForesignalBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  JsonFeedItemForesignalBuilder toBuilder() =>
      JsonFeedItemForesignalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonFeedItemForesignal &&
        severity == other.severity &&
        state == other.state &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        geometry == other.geometry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JsonFeedItemForesignal')
          ..add('severity', severity)
          ..add('state', state)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('geometry', geometry))
        .toString();
  }
}

class JsonFeedItemForesignalBuilder
    implements Builder<JsonFeedItemForesignal, JsonFeedItemForesignalBuilder> {
  _$JsonFeedItemForesignal? _$v;

  JsonFeedItemForesignalSeverityEnum? _severity;
  JsonFeedItemForesignalSeverityEnum? get severity => _$this._severity;
  set severity(JsonFeedItemForesignalSeverityEnum? severity) =>
      _$this._severity = severity;

  JsonFeedItemForesignalStateEnum? _state;
  JsonFeedItemForesignalStateEnum? get state => _$this._state;
  set state(JsonFeedItemForesignalStateEnum? state) => _$this._state = state;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  JsonFeedItemForesignalBuilder() {
    JsonFeedItemForesignal._defaults(this);
  }

  JsonFeedItemForesignalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _severity = $v.severity;
      _state = $v.state;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _geometry = $v.geometry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonFeedItemForesignal other) {
    _$v = other as _$JsonFeedItemForesignal;
  }

  @override
  void update(void Function(JsonFeedItemForesignalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonFeedItemForesignal build() => _build();

  _$JsonFeedItemForesignal _build() {
    _$JsonFeedItemForesignal _$result;
    try {
      _$result =
          _$v ??
          _$JsonFeedItemForesignal._(
            severity: severity,
            state: state,
            sourceId: sourceId,
            externalId: externalId,
            geometry: _geometry?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'JsonFeedItemForesignal',
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
