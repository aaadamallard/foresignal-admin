// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_pair.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WatchPair extends WatchPair {
  @override
  final String eventFamily;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final EventSelector? selector;
  @override
  final num? minEffect;
  @override
  final int? releaseLagDays;

  factory _$WatchPair([void Function(WatchPairBuilder)? updates]) =>
      (WatchPairBuilder()..update(updates))._build();

  _$WatchPair._({
    required this.eventFamily,
    this.regionCodes,
    this.selector,
    this.minEffect,
    this.releaseLagDays,
  }) : super._();
  @override
  WatchPair rebuild(void Function(WatchPairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchPairBuilder toBuilder() => WatchPairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchPair &&
        eventFamily == other.eventFamily &&
        regionCodes == other.regionCodes &&
        selector == other.selector &&
        minEffect == other.minEffect &&
        releaseLagDays == other.releaseLagDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventFamily.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jc(_$hash, minEffect.hashCode);
    _$hash = $jc(_$hash, releaseLagDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchPair')
          ..add('eventFamily', eventFamily)
          ..add('regionCodes', regionCodes)
          ..add('selector', selector)
          ..add('minEffect', minEffect)
          ..add('releaseLagDays', releaseLagDays))
        .toString();
  }
}

class WatchPairBuilder implements Builder<WatchPair, WatchPairBuilder> {
  _$WatchPair? _$v;

  String? _eventFamily;
  String? get eventFamily => _$this._eventFamily;
  set eventFamily(String? eventFamily) => _$this._eventFamily = eventFamily;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  EventSelectorBuilder? _selector;
  EventSelectorBuilder get selector =>
      _$this._selector ??= EventSelectorBuilder();
  set selector(EventSelectorBuilder? selector) => _$this._selector = selector;

  num? _minEffect;
  num? get minEffect => _$this._minEffect;
  set minEffect(num? minEffect) => _$this._minEffect = minEffect;

  int? _releaseLagDays;
  int? get releaseLagDays => _$this._releaseLagDays;
  set releaseLagDays(int? releaseLagDays) =>
      _$this._releaseLagDays = releaseLagDays;

  WatchPairBuilder() {
    WatchPair._defaults(this);
  }

  WatchPairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventFamily = $v.eventFamily;
      _regionCodes = $v.regionCodes?.toBuilder();
      _selector = $v.selector?.toBuilder();
      _minEffect = $v.minEffect;
      _releaseLagDays = $v.releaseLagDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchPair other) {
    _$v = other as _$WatchPair;
  }

  @override
  void update(void Function(WatchPairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchPair build() => _build();

  _$WatchPair _build() {
    _$WatchPair _$result;
    try {
      _$result =
          _$v ??
          _$WatchPair._(
            eventFamily: BuiltValueNullFieldError.checkNotNull(
              eventFamily,
              r'WatchPair',
              'eventFamily',
            ),
            regionCodes: _regionCodes?.build(),
            selector: _selector?.build(),
            minEffect: minEffect,
            releaseLagDays: releaseLagDays,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'selector';
        _selector?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WatchPair',
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
