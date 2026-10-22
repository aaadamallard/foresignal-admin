// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionLinks extends QuestionLinks {
  @override
  final String? situationId;
  @override
  final String? hypothesisSetId;
  @override
  final String? precursorId;
  @override
  final String? findingId;
  @override
  final String? seriesRef;
  @override
  final String? outlookId;

  factory _$QuestionLinks([void Function(QuestionLinksBuilder)? updates]) =>
      (QuestionLinksBuilder()..update(updates))._build();

  _$QuestionLinks._(
      {this.situationId,
      this.hypothesisSetId,
      this.precursorId,
      this.findingId,
      this.seriesRef,
      this.outlookId})
      : super._();
  @override
  QuestionLinks rebuild(void Function(QuestionLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionLinksBuilder toBuilder() => QuestionLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionLinks &&
        situationId == other.situationId &&
        hypothesisSetId == other.hypothesisSetId &&
        precursorId == other.precursorId &&
        findingId == other.findingId &&
        seriesRef == other.seriesRef &&
        outlookId == other.outlookId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, hypothesisSetId.hashCode);
    _$hash = $jc(_$hash, precursorId.hashCode);
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, seriesRef.hashCode);
    _$hash = $jc(_$hash, outlookId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionLinks')
          ..add('situationId', situationId)
          ..add('hypothesisSetId', hypothesisSetId)
          ..add('precursorId', precursorId)
          ..add('findingId', findingId)
          ..add('seriesRef', seriesRef)
          ..add('outlookId', outlookId))
        .toString();
  }
}

class QuestionLinksBuilder
    implements Builder<QuestionLinks, QuestionLinksBuilder> {
  _$QuestionLinks? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  String? _hypothesisSetId;
  String? get hypothesisSetId => _$this._hypothesisSetId;
  set hypothesisSetId(String? hypothesisSetId) =>
      _$this._hypothesisSetId = hypothesisSetId;

  String? _precursorId;
  String? get precursorId => _$this._precursorId;
  set precursorId(String? precursorId) => _$this._precursorId = precursorId;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  String? _seriesRef;
  String? get seriesRef => _$this._seriesRef;
  set seriesRef(String? seriesRef) => _$this._seriesRef = seriesRef;

  String? _outlookId;
  String? get outlookId => _$this._outlookId;
  set outlookId(String? outlookId) => _$this._outlookId = outlookId;

  QuestionLinksBuilder() {
    QuestionLinks._defaults(this);
  }

  QuestionLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _hypothesisSetId = $v.hypothesisSetId;
      _precursorId = $v.precursorId;
      _findingId = $v.findingId;
      _seriesRef = $v.seriesRef;
      _outlookId = $v.outlookId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionLinks other) {
    _$v = other as _$QuestionLinks;
  }

  @override
  void update(void Function(QuestionLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionLinks build() => _build();

  _$QuestionLinks _build() {
    final _$result = _$v ??
        _$QuestionLinks._(
          situationId: situationId,
          hypothesisSetId: hypothesisSetId,
          precursorId: precursorId,
          findingId: findingId,
          seriesRef: seriesRef,
          outlookId: outlookId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
