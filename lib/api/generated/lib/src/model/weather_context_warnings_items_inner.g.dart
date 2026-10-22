// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_warnings_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextWarningsItemsInner
    extends WeatherContextWarningsItemsInner {
  @override
  final String id;
  @override
  final String event;
  @override
  final String? severity;
  @override
  final DateTime? expires;
  @override
  final bool? untrusted;

  factory _$WeatherContextWarningsItemsInner([
    void Function(WeatherContextWarningsItemsInnerBuilder)? updates,
  ]) => (WeatherContextWarningsItemsInnerBuilder()..update(updates))._build();

  _$WeatherContextWarningsItemsInner._({
    required this.id,
    required this.event,
    this.severity,
    this.expires,
    this.untrusted,
  }) : super._();
  @override
  WeatherContextWarningsItemsInner rebuild(
    void Function(WeatherContextWarningsItemsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WeatherContextWarningsItemsInnerBuilder toBuilder() =>
      WeatherContextWarningsItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextWarningsItemsInner &&
        id == other.id &&
        event == other.event &&
        severity == other.severity &&
        expires == other.expires &&
        untrusted == other.untrusted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, untrusted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextWarningsItemsInner')
          ..add('id', id)
          ..add('event', event)
          ..add('severity', severity)
          ..add('expires', expires)
          ..add('untrusted', untrusted))
        .toString();
  }
}

class WeatherContextWarningsItemsInnerBuilder
    implements
        Builder<
          WeatherContextWarningsItemsInner,
          WeatherContextWarningsItemsInnerBuilder
        > {
  _$WeatherContextWarningsItemsInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  bool? _untrusted;
  bool? get untrusted => _$this._untrusted;
  set untrusted(bool? untrusted) => _$this._untrusted = untrusted;

  WeatherContextWarningsItemsInnerBuilder() {
    WeatherContextWarningsItemsInner._defaults(this);
  }

  WeatherContextWarningsItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _event = $v.event;
      _severity = $v.severity;
      _expires = $v.expires;
      _untrusted = $v.untrusted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextWarningsItemsInner other) {
    _$v = other as _$WeatherContextWarningsItemsInner;
  }

  @override
  void update(void Function(WeatherContextWarningsItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextWarningsItemsInner build() => _build();

  _$WeatherContextWarningsItemsInner _build() {
    final _$result =
        _$v ??
        _$WeatherContextWarningsItemsInner._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'WeatherContextWarningsItemsInner',
            'id',
          ),
          event: BuiltValueNullFieldError.checkNotNull(
            event,
            r'WeatherContextWarningsItemsInner',
            'event',
          ),
          severity: severity,
          expires: expires,
          untrusted: untrusted,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
