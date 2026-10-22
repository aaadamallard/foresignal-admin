// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_event_band_changes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisSetEventBandChangesInner
    extends HypothesisSetEventBandChangesInner {
  @override
  final String hypothesisId;
  @override
  final String? label;
  @override
  final IcdTerm fromTerm;
  @override
  final IcdTerm toTerm;
  @override
  final num probability;

  factory _$HypothesisSetEventBandChangesInner([
    void Function(HypothesisSetEventBandChangesInnerBuilder)? updates,
  ]) => (HypothesisSetEventBandChangesInnerBuilder()..update(updates))._build();

  _$HypothesisSetEventBandChangesInner._({
    required this.hypothesisId,
    this.label,
    required this.fromTerm,
    required this.toTerm,
    required this.probability,
  }) : super._();
  @override
  HypothesisSetEventBandChangesInner rebuild(
    void Function(HypothesisSetEventBandChangesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisSetEventBandChangesInnerBuilder toBuilder() =>
      HypothesisSetEventBandChangesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetEventBandChangesInner &&
        hypothesisId == other.hypothesisId &&
        label == other.label &&
        fromTerm == other.fromTerm &&
        toTerm == other.toTerm &&
        probability == other.probability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hypothesisId.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, fromTerm.hashCode);
    _$hash = $jc(_$hash, toTerm.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetEventBandChangesInner')
          ..add('hypothesisId', hypothesisId)
          ..add('label', label)
          ..add('fromTerm', fromTerm)
          ..add('toTerm', toTerm)
          ..add('probability', probability))
        .toString();
  }
}

class HypothesisSetEventBandChangesInnerBuilder
    implements
        Builder<
          HypothesisSetEventBandChangesInner,
          HypothesisSetEventBandChangesInnerBuilder
        > {
  _$HypothesisSetEventBandChangesInner? _$v;

  String? _hypothesisId;
  String? get hypothesisId => _$this._hypothesisId;
  set hypothesisId(String? hypothesisId) => _$this._hypothesisId = hypothesisId;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  IcdTerm? _fromTerm;
  IcdTerm? get fromTerm => _$this._fromTerm;
  set fromTerm(IcdTerm? fromTerm) => _$this._fromTerm = fromTerm;

  IcdTerm? _toTerm;
  IcdTerm? get toTerm => _$this._toTerm;
  set toTerm(IcdTerm? toTerm) => _$this._toTerm = toTerm;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  HypothesisSetEventBandChangesInnerBuilder() {
    HypothesisSetEventBandChangesInner._defaults(this);
  }

  HypothesisSetEventBandChangesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hypothesisId = $v.hypothesisId;
      _label = $v.label;
      _fromTerm = $v.fromTerm;
      _toTerm = $v.toTerm;
      _probability = $v.probability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetEventBandChangesInner other) {
    _$v = other as _$HypothesisSetEventBandChangesInner;
  }

  @override
  void update(
    void Function(HypothesisSetEventBandChangesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetEventBandChangesInner build() => _build();

  _$HypothesisSetEventBandChangesInner _build() {
    final _$result =
        _$v ??
        _$HypothesisSetEventBandChangesInner._(
          hypothesisId: BuiltValueNullFieldError.checkNotNull(
            hypothesisId,
            r'HypothesisSetEventBandChangesInner',
            'hypothesisId',
          ),
          label: label,
          fromTerm: BuiltValueNullFieldError.checkNotNull(
            fromTerm,
            r'HypothesisSetEventBandChangesInner',
            'fromTerm',
          ),
          toTerm: BuiltValueNullFieldError.checkNotNull(
            toTerm,
            r'HypothesisSetEventBandChangesInner',
            'toTerm',
          ),
          probability: BuiltValueNullFieldError.checkNotNull(
            probability,
            r'HypothesisSetEventBandChangesInner',
            'probability',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
