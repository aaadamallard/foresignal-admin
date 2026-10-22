// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taf_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TafPayload extends TafPayload {
  @override
  final String stationId;
  @override
  final DateTime issueTime;
  @override
  final DateTime validFrom;
  @override
  final DateTime validTo;
  @override
  final BuiltList<TafPayloadForecastInner>? forecast;
  @override
  final String rawText;

  factory _$TafPayload([void Function(TafPayloadBuilder)? updates]) =>
      (TafPayloadBuilder()..update(updates))._build();

  _$TafPayload._({
    required this.stationId,
    required this.issueTime,
    required this.validFrom,
    required this.validTo,
    this.forecast,
    required this.rawText,
  }) : super._();
  @override
  TafPayload rebuild(void Function(TafPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TafPayloadBuilder toBuilder() => TafPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TafPayload &&
        stationId == other.stationId &&
        issueTime == other.issueTime &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        forecast == other.forecast &&
        rawText == other.rawText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stationId.hashCode);
    _$hash = $jc(_$hash, issueTime.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jc(_$hash, rawText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TafPayload')
          ..add('stationId', stationId)
          ..add('issueTime', issueTime)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('forecast', forecast)
          ..add('rawText', rawText))
        .toString();
  }
}

class TafPayloadBuilder implements Builder<TafPayload, TafPayloadBuilder> {
  _$TafPayload? _$v;

  String? _stationId;
  String? get stationId => _$this._stationId;
  set stationId(String? stationId) => _$this._stationId = stationId;

  DateTime? _issueTime;
  DateTime? get issueTime => _$this._issueTime;
  set issueTime(DateTime? issueTime) => _$this._issueTime = issueTime;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  ListBuilder<TafPayloadForecastInner>? _forecast;
  ListBuilder<TafPayloadForecastInner> get forecast =>
      _$this._forecast ??= ListBuilder<TafPayloadForecastInner>();
  set forecast(ListBuilder<TafPayloadForecastInner>? forecast) =>
      _$this._forecast = forecast;

  String? _rawText;
  String? get rawText => _$this._rawText;
  set rawText(String? rawText) => _$this._rawText = rawText;

  TafPayloadBuilder() {
    TafPayload._defaults(this);
  }

  TafPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stationId = $v.stationId;
      _issueTime = $v.issueTime;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _forecast = $v.forecast?.toBuilder();
      _rawText = $v.rawText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TafPayload other) {
    _$v = other as _$TafPayload;
  }

  @override
  void update(void Function(TafPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TafPayload build() => _build();

  _$TafPayload _build() {
    _$TafPayload _$result;
    try {
      _$result =
          _$v ??
          _$TafPayload._(
            stationId: BuiltValueNullFieldError.checkNotNull(
              stationId,
              r'TafPayload',
              'stationId',
            ),
            issueTime: BuiltValueNullFieldError.checkNotNull(
              issueTime,
              r'TafPayload',
              'issueTime',
            ),
            validFrom: BuiltValueNullFieldError.checkNotNull(
              validFrom,
              r'TafPayload',
              'validFrom',
            ),
            validTo: BuiltValueNullFieldError.checkNotNull(
              validTo,
              r'TafPayload',
              'validTo',
            ),
            forecast: _forecast?.build(),
            rawText: BuiltValueNullFieldError.checkNotNull(
              rawText,
              r'TafPayload',
              'rawText',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forecast';
        _forecast?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TafPayload',
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
