// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_warnings_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemInfoWarningsInnerSeverityEnum
_$systemInfoWarningsInnerSeverityEnum_info =
    const SystemInfoWarningsInnerSeverityEnum._('info');
const SystemInfoWarningsInnerSeverityEnum
_$systemInfoWarningsInnerSeverityEnum_warning =
    const SystemInfoWarningsInnerSeverityEnum._('warning');
const SystemInfoWarningsInnerSeverityEnum
_$systemInfoWarningsInnerSeverityEnum_critical =
    const SystemInfoWarningsInnerSeverityEnum._('critical');
const SystemInfoWarningsInnerSeverityEnum
_$systemInfoWarningsInnerSeverityEnum_unknownDefaultOpenApi =
    const SystemInfoWarningsInnerSeverityEnum._('unknownDefaultOpenApi');

SystemInfoWarningsInnerSeverityEnum
_$systemInfoWarningsInnerSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$systemInfoWarningsInnerSeverityEnum_info;
    case 'warning':
      return _$systemInfoWarningsInnerSeverityEnum_warning;
    case 'critical':
      return _$systemInfoWarningsInnerSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$systemInfoWarningsInnerSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$systemInfoWarningsInnerSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SystemInfoWarningsInnerSeverityEnum>
_$systemInfoWarningsInnerSeverityEnumValues =
    BuiltSet<SystemInfoWarningsInnerSeverityEnum>(
      const <SystemInfoWarningsInnerSeverityEnum>[
        _$systemInfoWarningsInnerSeverityEnum_info,
        _$systemInfoWarningsInnerSeverityEnum_warning,
        _$systemInfoWarningsInnerSeverityEnum_critical,
        _$systemInfoWarningsInnerSeverityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SystemInfoWarningsInnerSeverityEnum>
_$systemInfoWarningsInnerSeverityEnumSerializer =
    _$SystemInfoWarningsInnerSeverityEnumSerializer();

class _$SystemInfoWarningsInnerSeverityEnumSerializer
    implements PrimitiveSerializer<SystemInfoWarningsInnerSeverityEnum> {
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
    SystemInfoWarningsInnerSeverityEnum,
  ];
  @override
  final String wireName = 'SystemInfoWarningsInnerSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoWarningsInnerSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemInfoWarningsInnerSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemInfoWarningsInnerSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SystemInfoWarningsInner extends SystemInfoWarningsInner {
  @override
  final String code;
  @override
  final SystemInfoWarningsInnerSeverityEnum? severity;
  @override
  final String message;

  factory _$SystemInfoWarningsInner([
    void Function(SystemInfoWarningsInnerBuilder)? updates,
  ]) => (SystemInfoWarningsInnerBuilder()..update(updates))._build();

  _$SystemInfoWarningsInner._({
    required this.code,
    this.severity,
    required this.message,
  }) : super._();
  @override
  SystemInfoWarningsInner rebuild(
    void Function(SystemInfoWarningsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemInfoWarningsInnerBuilder toBuilder() =>
      SystemInfoWarningsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoWarningsInner &&
        code == other.code &&
        severity == other.severity &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoWarningsInner')
          ..add('code', code)
          ..add('severity', severity)
          ..add('message', message))
        .toString();
  }
}

class SystemInfoWarningsInnerBuilder
    implements
        Builder<SystemInfoWarningsInner, SystemInfoWarningsInnerBuilder> {
  _$SystemInfoWarningsInner? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  SystemInfoWarningsInnerSeverityEnum? _severity;
  SystemInfoWarningsInnerSeverityEnum? get severity => _$this._severity;
  set severity(SystemInfoWarningsInnerSeverityEnum? severity) =>
      _$this._severity = severity;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SystemInfoWarningsInnerBuilder() {
    SystemInfoWarningsInner._defaults(this);
  }

  SystemInfoWarningsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _severity = $v.severity;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoWarningsInner other) {
    _$v = other as _$SystemInfoWarningsInner;
  }

  @override
  void update(void Function(SystemInfoWarningsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoWarningsInner build() => _build();

  _$SystemInfoWarningsInner _build() {
    final _$result =
        _$v ??
        _$SystemInfoWarningsInner._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'SystemInfoWarningsInner',
            'code',
          ),
          severity: severity,
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'SystemInfoWarningsInner',
            'message',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
