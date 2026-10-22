// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_run_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorTestRunRequest extends PrecursorTestRunRequest {
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;

  factory _$PrecursorTestRunRequest([
    void Function(PrecursorTestRunRequestBuilder)? updates,
  ]) => (PrecursorTestRunRequestBuilder()..update(updates))._build();

  _$PrecursorTestRunRequest._({this.from, this.to, this.fromSeq, this.toSeq})
    : super._();
  @override
  PrecursorTestRunRequest rebuild(
    void Function(PrecursorTestRunRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorTestRunRequestBuilder toBuilder() =>
      PrecursorTestRunRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestRunRequest &&
        from == other.from &&
        to == other.to &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTestRunRequest')
          ..add('from', from)
          ..add('to', to)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq))
        .toString();
  }
}

class PrecursorTestRunRequestBuilder
    implements
        Builder<PrecursorTestRunRequest, PrecursorTestRunRequestBuilder> {
  _$PrecursorTestRunRequest? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  PrecursorTestRunRequestBuilder() {
    PrecursorTestRunRequest._defaults(this);
  }

  PrecursorTestRunRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestRunRequest other) {
    _$v = other as _$PrecursorTestRunRequest;
  }

  @override
  void update(void Function(PrecursorTestRunRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestRunRequest build() => _build();

  _$PrecursorTestRunRequest _build() {
    final _$result =
        _$v ??
        _$PrecursorTestRunRequest._(
          from: from,
          to: to,
          fromSeq: fromSeq,
          toSeq: toSeq,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
