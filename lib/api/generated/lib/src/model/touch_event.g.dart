// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'touch_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TouchEvent extends TouchEvent {
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final DateTime observedAt;
  @override
  final DateTime? validUntil;
  @override
  final BuiltList<num>? bbox;

  factory _$TouchEvent([void Function(TouchEventBuilder)? updates]) =>
      (TouchEventBuilder()..update(updates))._build();

  _$TouchEvent._({
    required this.sourceId,
    required this.externalId,
    required this.observedAt,
    this.validUntil,
    this.bbox,
  }) : super._();
  @override
  TouchEvent rebuild(void Function(TouchEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TouchEventBuilder toBuilder() => TouchEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TouchEvent &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        observedAt == other.observedAt &&
        validUntil == other.validUntil &&
        bbox == other.bbox;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TouchEvent')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('observedAt', observedAt)
          ..add('validUntil', validUntil)
          ..add('bbox', bbox))
        .toString();
  }
}

class TouchEventBuilder implements Builder<TouchEvent, TouchEventBuilder> {
  _$TouchEvent? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  TouchEventBuilder() {
    TouchEvent._defaults(this);
  }

  TouchEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _observedAt = $v.observedAt;
      _validUntil = $v.validUntil;
      _bbox = $v.bbox?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TouchEvent other) {
    _$v = other as _$TouchEvent;
  }

  @override
  void update(void Function(TouchEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TouchEvent build() => _build();

  _$TouchEvent _build() {
    _$TouchEvent _$result;
    try {
      _$result =
          _$v ??
          _$TouchEvent._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'TouchEvent',
              'sourceId',
            ),
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'TouchEvent',
              'externalId',
            ),
            observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt,
              r'TouchEvent',
              'observedAt',
            ),
            validUntil: validUntil,
            bbox: _bbox?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TouchEvent',
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
