// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCueInput extends SocialCueInput {
  @override
  final String? placeId;
  @override
  final String? regionCode;
  @override
  final String? bbox;
  @override
  final String? entityRef;
  @override
  final String? situationId;
  @override
  final BuiltList<String>? terms;
  @override
  final BuiltList<String>? families;
  @override
  final BuiltList<SocialPlatformId>? platforms;
  @override
  final TimeRange window;
  @override
  final num? maxCostUsd;

  factory _$SocialCueInput([void Function(SocialCueInputBuilder)? updates]) =>
      (SocialCueInputBuilder()..update(updates))._build();

  _$SocialCueInput._({
    this.placeId,
    this.regionCode,
    this.bbox,
    this.entityRef,
    this.situationId,
    this.terms,
    this.families,
    this.platforms,
    required this.window,
    this.maxCostUsd,
  }) : super._();
  @override
  SocialCueInput rebuild(void Function(SocialCueInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCueInputBuilder toBuilder() => SocialCueInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCueInput &&
        placeId == other.placeId &&
        regionCode == other.regionCode &&
        bbox == other.bbox &&
        entityRef == other.entityRef &&
        situationId == other.situationId &&
        terms == other.terms &&
        families == other.families &&
        platforms == other.platforms &&
        window == other.window &&
        maxCostUsd == other.maxCostUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, entityRef.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, families.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, maxCostUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCueInput')
          ..add('placeId', placeId)
          ..add('regionCode', regionCode)
          ..add('bbox', bbox)
          ..add('entityRef', entityRef)
          ..add('situationId', situationId)
          ..add('terms', terms)
          ..add('families', families)
          ..add('platforms', platforms)
          ..add('window', window)
          ..add('maxCostUsd', maxCostUsd))
        .toString();
  }
}

class SocialCueInputBuilder
    implements Builder<SocialCueInput, SocialCueInputBuilder> {
  _$SocialCueInput? _$v;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  String? _bbox;
  String? get bbox => _$this._bbox;
  set bbox(String? bbox) => _$this._bbox = bbox;

  String? _entityRef;
  String? get entityRef => _$this._entityRef;
  set entityRef(String? entityRef) => _$this._entityRef = entityRef;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  ListBuilder<String>? _terms;
  ListBuilder<String> get terms => _$this._terms ??= ListBuilder<String>();
  set terms(ListBuilder<String>? terms) => _$this._terms = terms;

  ListBuilder<String>? _families;
  ListBuilder<String> get families =>
      _$this._families ??= ListBuilder<String>();
  set families(ListBuilder<String>? families) => _$this._families = families;

  ListBuilder<SocialPlatformId>? _platforms;
  ListBuilder<SocialPlatformId> get platforms =>
      _$this._platforms ??= ListBuilder<SocialPlatformId>();
  set platforms(ListBuilder<SocialPlatformId>? platforms) =>
      _$this._platforms = platforms;

  TimeRangeBuilder? _window;
  TimeRangeBuilder get window => _$this._window ??= TimeRangeBuilder();
  set window(TimeRangeBuilder? window) => _$this._window = window;

  num? _maxCostUsd;
  num? get maxCostUsd => _$this._maxCostUsd;
  set maxCostUsd(num? maxCostUsd) => _$this._maxCostUsd = maxCostUsd;

  SocialCueInputBuilder() {
    SocialCueInput._defaults(this);
  }

  SocialCueInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeId = $v.placeId;
      _regionCode = $v.regionCode;
      _bbox = $v.bbox;
      _entityRef = $v.entityRef;
      _situationId = $v.situationId;
      _terms = $v.terms?.toBuilder();
      _families = $v.families?.toBuilder();
      _platforms = $v.platforms?.toBuilder();
      _window = $v.window.toBuilder();
      _maxCostUsd = $v.maxCostUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCueInput other) {
    _$v = other as _$SocialCueInput;
  }

  @override
  void update(void Function(SocialCueInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCueInput build() => _build();

  _$SocialCueInput _build() {
    _$SocialCueInput _$result;
    try {
      _$result =
          _$v ??
          _$SocialCueInput._(
            placeId: placeId,
            regionCode: regionCode,
            bbox: bbox,
            entityRef: entityRef,
            situationId: situationId,
            terms: _terms?.build(),
            families: _families?.build(),
            platforms: _platforms?.build(),
            window: window.build(),
            maxCostUsd: maxCostUsd,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'terms';
        _terms?.build();
        _$failedField = 'families';
        _families?.build();
        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'window';
        window.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialCueInput',
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
