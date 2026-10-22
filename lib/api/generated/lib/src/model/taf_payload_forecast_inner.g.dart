// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taf_payload_forecast_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TafPayloadForecastInner extends TafPayloadForecastInner {
  @override
  final String? changeIndicator;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final BuiltMap<String, JsonObject?>? wind;
  @override
  final String? visibility;
  @override
  final BuiltList<String>? wx;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? clouds;

  factory _$TafPayloadForecastInner([
    void Function(TafPayloadForecastInnerBuilder)? updates,
  ]) => (TafPayloadForecastInnerBuilder()..update(updates))._build();

  _$TafPayloadForecastInner._({
    this.changeIndicator,
    this.from,
    this.to,
    this.wind,
    this.visibility,
    this.wx,
    this.clouds,
  }) : super._();
  @override
  TafPayloadForecastInner rebuild(
    void Function(TafPayloadForecastInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TafPayloadForecastInnerBuilder toBuilder() =>
      TafPayloadForecastInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TafPayloadForecastInner &&
        changeIndicator == other.changeIndicator &&
        from == other.from &&
        to == other.to &&
        wind == other.wind &&
        visibility == other.visibility &&
        wx == other.wx &&
        clouds == other.clouds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeIndicator.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, wind.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, wx.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TafPayloadForecastInner')
          ..add('changeIndicator', changeIndicator)
          ..add('from', from)
          ..add('to', to)
          ..add('wind', wind)
          ..add('visibility', visibility)
          ..add('wx', wx)
          ..add('clouds', clouds))
        .toString();
  }
}

class TafPayloadForecastInnerBuilder
    implements
        Builder<TafPayloadForecastInner, TafPayloadForecastInnerBuilder> {
  _$TafPayloadForecastInner? _$v;

  String? _changeIndicator;
  String? get changeIndicator => _$this._changeIndicator;
  set changeIndicator(String? changeIndicator) =>
      _$this._changeIndicator = changeIndicator;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  MapBuilder<String, JsonObject?>? _wind;
  MapBuilder<String, JsonObject?> get wind =>
      _$this._wind ??= MapBuilder<String, JsonObject?>();
  set wind(MapBuilder<String, JsonObject?>? wind) => _$this._wind = wind;

  String? _visibility;
  String? get visibility => _$this._visibility;
  set visibility(String? visibility) => _$this._visibility = visibility;

  ListBuilder<String>? _wx;
  ListBuilder<String> get wx => _$this._wx ??= ListBuilder<String>();
  set wx(ListBuilder<String>? wx) => _$this._wx = wx;

  ListBuilder<BuiltMap<String, JsonObject?>>? _clouds;
  ListBuilder<BuiltMap<String, JsonObject?>> get clouds =>
      _$this._clouds ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set clouds(ListBuilder<BuiltMap<String, JsonObject?>>? clouds) =>
      _$this._clouds = clouds;

  TafPayloadForecastInnerBuilder() {
    TafPayloadForecastInner._defaults(this);
  }

  TafPayloadForecastInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeIndicator = $v.changeIndicator;
      _from = $v.from;
      _to = $v.to;
      _wind = $v.wind?.toBuilder();
      _visibility = $v.visibility;
      _wx = $v.wx?.toBuilder();
      _clouds = $v.clouds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TafPayloadForecastInner other) {
    _$v = other as _$TafPayloadForecastInner;
  }

  @override
  void update(void Function(TafPayloadForecastInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TafPayloadForecastInner build() => _build();

  _$TafPayloadForecastInner _build() {
    _$TafPayloadForecastInner _$result;
    try {
      _$result =
          _$v ??
          _$TafPayloadForecastInner._(
            changeIndicator: changeIndicator,
            from: from,
            to: to,
            wind: _wind?.build(),
            visibility: visibility,
            wx: _wx?.build(),
            clouds: _clouds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wind';
        _wind?.build();

        _$failedField = 'wx';
        _wx?.build();
        _$failedField = 'clouds';
        _clouds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TafPayloadForecastInner',
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
