// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glance_alerts_latest_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GlanceAlertsLatestInnerSeverityEnum
_$glanceAlertsLatestInnerSeverityEnum_info =
    const GlanceAlertsLatestInnerSeverityEnum._('info');
const GlanceAlertsLatestInnerSeverityEnum
_$glanceAlertsLatestInnerSeverityEnum_warning =
    const GlanceAlertsLatestInnerSeverityEnum._('warning');
const GlanceAlertsLatestInnerSeverityEnum
_$glanceAlertsLatestInnerSeverityEnum_critical =
    const GlanceAlertsLatestInnerSeverityEnum._('critical');
const GlanceAlertsLatestInnerSeverityEnum
_$glanceAlertsLatestInnerSeverityEnum_unknownDefaultOpenApi =
    const GlanceAlertsLatestInnerSeverityEnum._('unknownDefaultOpenApi');

GlanceAlertsLatestInnerSeverityEnum
_$glanceAlertsLatestInnerSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$glanceAlertsLatestInnerSeverityEnum_info;
    case 'warning':
      return _$glanceAlertsLatestInnerSeverityEnum_warning;
    case 'critical':
      return _$glanceAlertsLatestInnerSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$glanceAlertsLatestInnerSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$glanceAlertsLatestInnerSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<GlanceAlertsLatestInnerSeverityEnum>
_$glanceAlertsLatestInnerSeverityEnumValues =
    BuiltSet<GlanceAlertsLatestInnerSeverityEnum>(
      const <GlanceAlertsLatestInnerSeverityEnum>[
        _$glanceAlertsLatestInnerSeverityEnum_info,
        _$glanceAlertsLatestInnerSeverityEnum_warning,
        _$glanceAlertsLatestInnerSeverityEnum_critical,
        _$glanceAlertsLatestInnerSeverityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<GlanceAlertsLatestInnerSeverityEnum>
_$glanceAlertsLatestInnerSeverityEnumSerializer =
    _$GlanceAlertsLatestInnerSeverityEnumSerializer();

class _$GlanceAlertsLatestInnerSeverityEnumSerializer
    implements PrimitiveSerializer<GlanceAlertsLatestInnerSeverityEnum> {
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
  final Iterable<Type> types = const <Type>[
    GlanceAlertsLatestInnerSeverityEnum,
  ];
  @override
  final String wireName = 'GlanceAlertsLatestInnerSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    GlanceAlertsLatestInnerSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GlanceAlertsLatestInnerSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GlanceAlertsLatestInnerSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$GlanceAlertsLatestInner extends GlanceAlertsLatestInner {
  @override
  final int id;
  @override
  final GlanceAlertsLatestInnerSeverityEnum severity;
  @override
  final String? shortTitle;
  @override
  final DateTime firedAt;
  @override
  final String? near;

  factory _$GlanceAlertsLatestInner([
    void Function(GlanceAlertsLatestInnerBuilder)? updates,
  ]) => (GlanceAlertsLatestInnerBuilder()..update(updates))._build();

  _$GlanceAlertsLatestInner._({
    required this.id,
    required this.severity,
    this.shortTitle,
    required this.firedAt,
    this.near,
  }) : super._();
  @override
  GlanceAlertsLatestInner rebuild(
    void Function(GlanceAlertsLatestInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GlanceAlertsLatestInnerBuilder toBuilder() =>
      GlanceAlertsLatestInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlanceAlertsLatestInner &&
        id == other.id &&
        severity == other.severity &&
        shortTitle == other.shortTitle &&
        firedAt == other.firedAt &&
        near == other.near;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, shortTitle.hashCode);
    _$hash = $jc(_$hash, firedAt.hashCode);
    _$hash = $jc(_$hash, near.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlanceAlertsLatestInner')
          ..add('id', id)
          ..add('severity', severity)
          ..add('shortTitle', shortTitle)
          ..add('firedAt', firedAt)
          ..add('near', near))
        .toString();
  }
}

class GlanceAlertsLatestInnerBuilder
    implements
        Builder<GlanceAlertsLatestInner, GlanceAlertsLatestInnerBuilder> {
  _$GlanceAlertsLatestInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GlanceAlertsLatestInnerSeverityEnum? _severity;
  GlanceAlertsLatestInnerSeverityEnum? get severity => _$this._severity;
  set severity(GlanceAlertsLatestInnerSeverityEnum? severity) =>
      _$this._severity = severity;

  String? _shortTitle;
  String? get shortTitle => _$this._shortTitle;
  set shortTitle(String? shortTitle) => _$this._shortTitle = shortTitle;

  DateTime? _firedAt;
  DateTime? get firedAt => _$this._firedAt;
  set firedAt(DateTime? firedAt) => _$this._firedAt = firedAt;

  String? _near;
  String? get near => _$this._near;
  set near(String? near) => _$this._near = near;

  GlanceAlertsLatestInnerBuilder() {
    GlanceAlertsLatestInner._defaults(this);
  }

  GlanceAlertsLatestInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _severity = $v.severity;
      _shortTitle = $v.shortTitle;
      _firedAt = $v.firedAt;
      _near = $v.near;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlanceAlertsLatestInner other) {
    _$v = other as _$GlanceAlertsLatestInner;
  }

  @override
  void update(void Function(GlanceAlertsLatestInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlanceAlertsLatestInner build() => _build();

  _$GlanceAlertsLatestInner _build() {
    final _$result =
        _$v ??
        _$GlanceAlertsLatestInner._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GlanceAlertsLatestInner',
            'id',
          ),
          severity: BuiltValueNullFieldError.checkNotNull(
            severity,
            r'GlanceAlertsLatestInner',
            'severity',
          ),
          shortTitle: shortTitle,
          firedAt: BuiltValueNullFieldError.checkNotNull(
            firedAt,
            r'GlanceAlertsLatestInner',
            'firedAt',
          ),
          near: near,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
