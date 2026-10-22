// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intelligence_event_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelligenceEventContext extends IntelligenceEventContext {
  @override
  final BuiltMap<String, JsonObject?>? weather;

  factory _$IntelligenceEventContext(
          [void Function(IntelligenceEventContextBuilder)? updates]) =>
      (IntelligenceEventContextBuilder()..update(updates))._build();

  _$IntelligenceEventContext._({this.weather}) : super._();
  @override
  IntelligenceEventContext rebuild(
          void Function(IntelligenceEventContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelligenceEventContextBuilder toBuilder() =>
      IntelligenceEventContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligenceEventContext && weather == other.weather;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelligenceEventContext')
          ..add('weather', weather))
        .toString();
  }
}

class IntelligenceEventContextBuilder
    implements
        Builder<IntelligenceEventContext, IntelligenceEventContextBuilder> {
  _$IntelligenceEventContext? _$v;

  MapBuilder<String, JsonObject?>? _weather;
  MapBuilder<String, JsonObject?> get weather =>
      _$this._weather ??= MapBuilder<String, JsonObject?>();
  set weather(MapBuilder<String, JsonObject?>? weather) =>
      _$this._weather = weather;

  IntelligenceEventContextBuilder() {
    IntelligenceEventContext._defaults(this);
  }

  IntelligenceEventContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weather = $v.weather?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligenceEventContext other) {
    _$v = other as _$IntelligenceEventContext;
  }

  @override
  void update(void Function(IntelligenceEventContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligenceEventContext build() => _build();

  _$IntelligenceEventContext _build() {
    _$IntelligenceEventContext _$result;
    try {
      _$result = _$v ??
          _$IntelligenceEventContext._(
            weather: _weather?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        _weather?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IntelligenceEventContext', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
