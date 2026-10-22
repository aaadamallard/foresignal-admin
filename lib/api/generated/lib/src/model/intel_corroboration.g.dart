// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_corroboration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelCorroboration extends IntelCorroboration {
  @override
  final IntelCorroborationEventQuality? eventQuality;
  @override
  final IntelCorroborationSituationActivation? situationActivation;
  @override
  final IntelCorroborationAutoCorroborate? autoCorroborate;

  factory _$IntelCorroboration([
    void Function(IntelCorroborationBuilder)? updates,
  ]) => (IntelCorroborationBuilder()..update(updates))._build();

  _$IntelCorroboration._({
    this.eventQuality,
    this.situationActivation,
    this.autoCorroborate,
  }) : super._();
  @override
  IntelCorroboration rebuild(
    void Function(IntelCorroborationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelCorroborationBuilder toBuilder() =>
      IntelCorroborationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelCorroboration &&
        eventQuality == other.eventQuality &&
        situationActivation == other.situationActivation &&
        autoCorroborate == other.autoCorroborate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventQuality.hashCode);
    _$hash = $jc(_$hash, situationActivation.hashCode);
    _$hash = $jc(_$hash, autoCorroborate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelCorroboration')
          ..add('eventQuality', eventQuality)
          ..add('situationActivation', situationActivation)
          ..add('autoCorroborate', autoCorroborate))
        .toString();
  }
}

class IntelCorroborationBuilder
    implements Builder<IntelCorroboration, IntelCorroborationBuilder> {
  _$IntelCorroboration? _$v;

  IntelCorroborationEventQualityBuilder? _eventQuality;
  IntelCorroborationEventQualityBuilder get eventQuality =>
      _$this._eventQuality ??= IntelCorroborationEventQualityBuilder();
  set eventQuality(IntelCorroborationEventQualityBuilder? eventQuality) =>
      _$this._eventQuality = eventQuality;

  IntelCorroborationSituationActivationBuilder? _situationActivation;
  IntelCorroborationSituationActivationBuilder get situationActivation =>
      _$this._situationActivation ??=
          IntelCorroborationSituationActivationBuilder();
  set situationActivation(
    IntelCorroborationSituationActivationBuilder? situationActivation,
  ) => _$this._situationActivation = situationActivation;

  IntelCorroborationAutoCorroborateBuilder? _autoCorroborate;
  IntelCorroborationAutoCorroborateBuilder get autoCorroborate =>
      _$this._autoCorroborate ??= IntelCorroborationAutoCorroborateBuilder();
  set autoCorroborate(
    IntelCorroborationAutoCorroborateBuilder? autoCorroborate,
  ) => _$this._autoCorroborate = autoCorroborate;

  IntelCorroborationBuilder() {
    IntelCorroboration._defaults(this);
  }

  IntelCorroborationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventQuality = $v.eventQuality?.toBuilder();
      _situationActivation = $v.situationActivation?.toBuilder();
      _autoCorroborate = $v.autoCorroborate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelCorroboration other) {
    _$v = other as _$IntelCorroboration;
  }

  @override
  void update(void Function(IntelCorroborationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelCorroboration build() => _build();

  _$IntelCorroboration _build() {
    _$IntelCorroboration _$result;
    try {
      _$result =
          _$v ??
          _$IntelCorroboration._(
            eventQuality: _eventQuality?.build(),
            situationActivation: _situationActivation?.build(),
            autoCorroborate: _autoCorroborate?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventQuality';
        _eventQuality?.build();
        _$failedField = 'situationActivation';
        _situationActivation?.build();
        _$failedField = 'autoCorroborate';
        _autoCorroborate?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelCorroboration',
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
