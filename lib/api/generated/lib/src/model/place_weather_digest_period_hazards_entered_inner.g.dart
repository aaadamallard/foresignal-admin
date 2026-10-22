// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_period_hazards_entered_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestPeriodHazardsEnteredInner
    extends PlaceWeatherDigestPeriodHazardsEnteredInner {
  @override
  final String kind;
  @override
  final String title;
  @override
  final DateTime at;
  @override
  final String? ref;

  factory _$PlaceWeatherDigestPeriodHazardsEnteredInner([
    void Function(PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder)? updates,
  ]) => (PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder()..update(updates))
      ._build();

  _$PlaceWeatherDigestPeriodHazardsEnteredInner._({
    required this.kind,
    required this.title,
    required this.at,
    this.ref,
  }) : super._();
  @override
  PlaceWeatherDigestPeriodHazardsEnteredInner rebuild(
    void Function(PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder toBuilder() =>
      PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestPeriodHazardsEnteredInner &&
        kind == other.kind &&
        title == other.title &&
        at == other.at &&
        ref == other.ref;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PlaceWeatherDigestPeriodHazardsEnteredInner',
          )
          ..add('kind', kind)
          ..add('title', title)
          ..add('at', at)
          ..add('ref', ref))
        .toString();
  }
}

class PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder
    implements
        Builder<
          PlaceWeatherDigestPeriodHazardsEnteredInner,
          PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder
        > {
  _$PlaceWeatherDigestPeriodHazardsEnteredInner? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder() {
    PlaceWeatherDigestPeriodHazardsEnteredInner._defaults(this);
  }

  PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _title = $v.title;
      _at = $v.at;
      _ref = $v.ref;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestPeriodHazardsEnteredInner other) {
    _$v = other as _$PlaceWeatherDigestPeriodHazardsEnteredInner;
  }

  @override
  void update(
    void Function(PlaceWeatherDigestPeriodHazardsEnteredInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestPeriodHazardsEnteredInner build() => _build();

  _$PlaceWeatherDigestPeriodHazardsEnteredInner _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherDigestPeriodHazardsEnteredInner._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'PlaceWeatherDigestPeriodHazardsEnteredInner',
            'kind',
          ),
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'PlaceWeatherDigestPeriodHazardsEnteredInner',
            'title',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'PlaceWeatherDigestPeriodHazardsEnteredInner',
            'at',
          ),
          ref: ref,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
