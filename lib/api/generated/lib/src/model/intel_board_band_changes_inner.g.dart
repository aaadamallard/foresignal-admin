// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_band_changes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelBoardBandChangesInner extends IntelBoardBandChangesInner {
  @override
  final String setId;
  @override
  final String hypothesisId;
  @override
  final String? question;
  @override
  final String? label;
  @override
  final IcdTerm? fromTerm;
  @override
  final IcdTerm toTerm;
  @override
  final num? probability;
  @override
  final DateTime at;

  factory _$IntelBoardBandChangesInner([
    void Function(IntelBoardBandChangesInnerBuilder)? updates,
  ]) => (IntelBoardBandChangesInnerBuilder()..update(updates))._build();

  _$IntelBoardBandChangesInner._({
    required this.setId,
    required this.hypothesisId,
    this.question,
    this.label,
    this.fromTerm,
    required this.toTerm,
    this.probability,
    required this.at,
  }) : super._();
  @override
  IntelBoardBandChangesInner rebuild(
    void Function(IntelBoardBandChangesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelBoardBandChangesInnerBuilder toBuilder() =>
      IntelBoardBandChangesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardBandChangesInner &&
        setId == other.setId &&
        hypothesisId == other.hypothesisId &&
        question == other.question &&
        label == other.label &&
        fromTerm == other.fromTerm &&
        toTerm == other.toTerm &&
        probability == other.probability &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, hypothesisId.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, fromTerm.hashCode);
    _$hash = $jc(_$hash, toTerm.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoardBandChangesInner')
          ..add('setId', setId)
          ..add('hypothesisId', hypothesisId)
          ..add('question', question)
          ..add('label', label)
          ..add('fromTerm', fromTerm)
          ..add('toTerm', toTerm)
          ..add('probability', probability)
          ..add('at', at))
        .toString();
  }
}

class IntelBoardBandChangesInnerBuilder
    implements
        Builder<IntelBoardBandChangesInner, IntelBoardBandChangesInnerBuilder> {
  _$IntelBoardBandChangesInner? _$v;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _hypothesisId;
  String? get hypothesisId => _$this._hypothesisId;
  set hypothesisId(String? hypothesisId) => _$this._hypothesisId = hypothesisId;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

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

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  IntelBoardBandChangesInnerBuilder() {
    IntelBoardBandChangesInner._defaults(this);
  }

  IntelBoardBandChangesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setId = $v.setId;
      _hypothesisId = $v.hypothesisId;
      _question = $v.question;
      _label = $v.label;
      _fromTerm = $v.fromTerm;
      _toTerm = $v.toTerm;
      _probability = $v.probability;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoardBandChangesInner other) {
    _$v = other as _$IntelBoardBandChangesInner;
  }

  @override
  void update(void Function(IntelBoardBandChangesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardBandChangesInner build() => _build();

  _$IntelBoardBandChangesInner _build() {
    final _$result =
        _$v ??
        _$IntelBoardBandChangesInner._(
          setId: BuiltValueNullFieldError.checkNotNull(
            setId,
            r'IntelBoardBandChangesInner',
            'setId',
          ),
          hypothesisId: BuiltValueNullFieldError.checkNotNull(
            hypothesisId,
            r'IntelBoardBandChangesInner',
            'hypothesisId',
          ),
          question: question,
          label: label,
          fromTerm: fromTerm,
          toTerm: BuiltValueNullFieldError.checkNotNull(
            toTerm,
            r'IntelBoardBandChangesInner',
            'toTerm',
          ),
          probability: probability,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'IntelBoardBandChangesInner',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
