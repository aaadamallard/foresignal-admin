// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpa_batch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CpaBatchRequest extends CpaBatchRequest {
  @override
  final String subject;
  @override
  final CpaBatchRequestFilter filter;
  @override
  final String? horizon;
  @override
  final num? maxDcpaM;
  @override
  final int? top;

  factory _$CpaBatchRequest([void Function(CpaBatchRequestBuilder)? updates]) =>
      (CpaBatchRequestBuilder()..update(updates))._build();

  _$CpaBatchRequest._(
      {required this.subject,
      required this.filter,
      this.horizon,
      this.maxDcpaM,
      this.top})
      : super._();
  @override
  CpaBatchRequest rebuild(void Function(CpaBatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpaBatchRequestBuilder toBuilder() => CpaBatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpaBatchRequest &&
        subject == other.subject &&
        filter == other.filter &&
        horizon == other.horizon &&
        maxDcpaM == other.maxDcpaM &&
        top == other.top;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, maxDcpaM.hashCode);
    _$hash = $jc(_$hash, top.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CpaBatchRequest')
          ..add('subject', subject)
          ..add('filter', filter)
          ..add('horizon', horizon)
          ..add('maxDcpaM', maxDcpaM)
          ..add('top', top))
        .toString();
  }
}

class CpaBatchRequestBuilder
    implements Builder<CpaBatchRequest, CpaBatchRequestBuilder> {
  _$CpaBatchRequest? _$v;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  CpaBatchRequestFilterBuilder? _filter;
  CpaBatchRequestFilterBuilder get filter =>
      _$this._filter ??= CpaBatchRequestFilterBuilder();
  set filter(CpaBatchRequestFilterBuilder? filter) => _$this._filter = filter;

  String? _horizon;
  String? get horizon => _$this._horizon;
  set horizon(String? horizon) => _$this._horizon = horizon;

  num? _maxDcpaM;
  num? get maxDcpaM => _$this._maxDcpaM;
  set maxDcpaM(num? maxDcpaM) => _$this._maxDcpaM = maxDcpaM;

  int? _top;
  int? get top => _$this._top;
  set top(int? top) => _$this._top = top;

  CpaBatchRequestBuilder() {
    CpaBatchRequest._defaults(this);
  }

  CpaBatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject;
      _filter = $v.filter.toBuilder();
      _horizon = $v.horizon;
      _maxDcpaM = $v.maxDcpaM;
      _top = $v.top;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpaBatchRequest other) {
    _$v = other as _$CpaBatchRequest;
  }

  @override
  void update(void Function(CpaBatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CpaBatchRequest build() => _build();

  _$CpaBatchRequest _build() {
    _$CpaBatchRequest _$result;
    try {
      _$result = _$v ??
          _$CpaBatchRequest._(
            subject: BuiltValueNullFieldError.checkNotNull(
                subject, r'CpaBatchRequest', 'subject'),
            filter: filter.build(),
            horizon: horizon,
            maxDcpaM: maxDcpaM,
            top: top,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        filter.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CpaBatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
