// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_linker_test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationLinkerTestRequest extends SituationLinkerTestRequest {
  @override
  final int fromSeq;
  @override
  final int toSeq;

  factory _$SituationLinkerTestRequest([
    void Function(SituationLinkerTestRequestBuilder)? updates,
  ]) => (SituationLinkerTestRequestBuilder()..update(updates))._build();

  _$SituationLinkerTestRequest._({required this.fromSeq, required this.toSeq})
    : super._();
  @override
  SituationLinkerTestRequest rebuild(
    void Function(SituationLinkerTestRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationLinkerTestRequestBuilder toBuilder() =>
      SituationLinkerTestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationLinkerTestRequest &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationLinkerTestRequest')
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq))
        .toString();
  }
}

class SituationLinkerTestRequestBuilder
    implements
        Builder<SituationLinkerTestRequest, SituationLinkerTestRequestBuilder> {
  _$SituationLinkerTestRequest? _$v;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  SituationLinkerTestRequestBuilder() {
    SituationLinkerTestRequest._defaults(this);
  }

  SituationLinkerTestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationLinkerTestRequest other) {
    _$v = other as _$SituationLinkerTestRequest;
  }

  @override
  void update(void Function(SituationLinkerTestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationLinkerTestRequest build() => _build();

  _$SituationLinkerTestRequest _build() {
    final _$result =
        _$v ??
        _$SituationLinkerTestRequest._(
          fromSeq: BuiltValueNullFieldError.checkNotNull(
            fromSeq,
            r'SituationLinkerTestRequest',
            'fromSeq',
          ),
          toSeq: BuiltValueNullFieldError.checkNotNull(
            toSeq,
            r'SituationLinkerTestRequest',
            'toSeq',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
