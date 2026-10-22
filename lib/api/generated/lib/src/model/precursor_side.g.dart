// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_side.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorSide extends PrecursorSide {
  @override
  final EventSelector? selector;
  @override
  final String? seriesRef;
  @override
  final String? family;
  @override
  final String label;
  @override
  final num? threshold;

  factory _$PrecursorSide([void Function(PrecursorSideBuilder)? updates]) =>
      (PrecursorSideBuilder()..update(updates))._build();

  _$PrecursorSide._({
    this.selector,
    this.seriesRef,
    this.family,
    required this.label,
    this.threshold,
  }) : super._();
  @override
  PrecursorSide rebuild(void Function(PrecursorSideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorSideBuilder toBuilder() => PrecursorSideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorSide &&
        selector == other.selector &&
        seriesRef == other.seriesRef &&
        family == other.family &&
        label == other.label &&
        threshold == other.threshold;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jc(_$hash, seriesRef.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorSide')
          ..add('selector', selector)
          ..add('seriesRef', seriesRef)
          ..add('family', family)
          ..add('label', label)
          ..add('threshold', threshold))
        .toString();
  }
}

class PrecursorSideBuilder
    implements Builder<PrecursorSide, PrecursorSideBuilder> {
  _$PrecursorSide? _$v;

  EventSelectorBuilder? _selector;
  EventSelectorBuilder get selector =>
      _$this._selector ??= EventSelectorBuilder();
  set selector(EventSelectorBuilder? selector) => _$this._selector = selector;

  String? _seriesRef;
  String? get seriesRef => _$this._seriesRef;
  set seriesRef(String? seriesRef) => _$this._seriesRef = seriesRef;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  num? _threshold;
  num? get threshold => _$this._threshold;
  set threshold(num? threshold) => _$this._threshold = threshold;

  PrecursorSideBuilder() {
    PrecursorSide._defaults(this);
  }

  PrecursorSideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selector = $v.selector?.toBuilder();
      _seriesRef = $v.seriesRef;
      _family = $v.family;
      _label = $v.label;
      _threshold = $v.threshold;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorSide other) {
    _$v = other as _$PrecursorSide;
  }

  @override
  void update(void Function(PrecursorSideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorSide build() => _build();

  _$PrecursorSide _build() {
    _$PrecursorSide _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorSide._(
            selector: _selector?.build(),
            seriesRef: seriesRef,
            family: family,
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'PrecursorSide',
              'label',
            ),
            threshold: threshold,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selector';
        _selector?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecursorSide',
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
