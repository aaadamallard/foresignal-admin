// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationActionMethodEnum _$notificationActionMethodEnum_POST =
    const NotificationActionMethodEnum._('POST');

NotificationActionMethodEnum _$notificationActionMethodEnumValueOf(
  String name,
) {
  switch (name) {
    case 'POST':
      return _$notificationActionMethodEnum_POST;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationActionMethodEnum>
_$notificationActionMethodEnumValues = BuiltSet<NotificationActionMethodEnum>(
  const <NotificationActionMethodEnum>[_$notificationActionMethodEnum_POST],
);

Serializer<NotificationActionMethodEnum>
_$notificationActionMethodEnumSerializer =
    _$NotificationActionMethodEnumSerializer();

class _$NotificationActionMethodEnumSerializer
    implements PrimitiveSerializer<NotificationActionMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'POST': 'POST',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'POST': 'POST',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationActionMethodEnum];
  @override
  final String wireName = 'NotificationActionMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationActionMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationActionMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationActionMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationAction extends NotificationAction {
  @override
  final String action;
  @override
  final String? label;
  @override
  final NotificationActionMethodEnum? method;
  @override
  final String url;
  @override
  final String? confirmUrl;
  @override
  final NotificationActionParams? params;
  @override
  final DateTime expiresAt;

  factory _$NotificationAction([
    void Function(NotificationActionBuilder)? updates,
  ]) => (NotificationActionBuilder()..update(updates))._build();

  _$NotificationAction._({
    required this.action,
    this.label,
    this.method,
    required this.url,
    this.confirmUrl,
    this.params,
    required this.expiresAt,
  }) : super._();
  @override
  NotificationAction rebuild(
    void Function(NotificationActionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationActionBuilder toBuilder() =>
      NotificationActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationAction &&
        action == other.action &&
        label == other.label &&
        method == other.method &&
        url == other.url &&
        confirmUrl == other.confirmUrl &&
        params == other.params &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, confirmUrl.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationAction')
          ..add('action', action)
          ..add('label', label)
          ..add('method', method)
          ..add('url', url)
          ..add('confirmUrl', confirmUrl)
          ..add('params', params)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class NotificationActionBuilder
    implements Builder<NotificationAction, NotificationActionBuilder> {
  _$NotificationAction? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  NotificationActionMethodEnum? _method;
  NotificationActionMethodEnum? get method => _$this._method;
  set method(NotificationActionMethodEnum? method) => _$this._method = method;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _confirmUrl;
  String? get confirmUrl => _$this._confirmUrl;
  set confirmUrl(String? confirmUrl) => _$this._confirmUrl = confirmUrl;

  NotificationActionParamsBuilder? _params;
  NotificationActionParamsBuilder get params =>
      _$this._params ??= NotificationActionParamsBuilder();
  set params(NotificationActionParamsBuilder? params) =>
      _$this._params = params;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  NotificationActionBuilder() {
    NotificationAction._defaults(this);
  }

  NotificationActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _label = $v.label;
      _method = $v.method;
      _url = $v.url;
      _confirmUrl = $v.confirmUrl;
      _params = $v.params?.toBuilder();
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationAction other) {
    _$v = other as _$NotificationAction;
  }

  @override
  void update(void Function(NotificationActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationAction build() => _build();

  _$NotificationAction _build() {
    _$NotificationAction _$result;
    try {
      _$result =
          _$v ??
          _$NotificationAction._(
            action: BuiltValueNullFieldError.checkNotNull(
              action,
              r'NotificationAction',
              'action',
            ),
            label: label,
            method: method,
            url: BuiltValueNullFieldError.checkNotNull(
              url,
              r'NotificationAction',
              'url',
            ),
            confirmUrl: confirmUrl,
            params: _params?.build(),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'NotificationAction',
              'expiresAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationAction',
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
