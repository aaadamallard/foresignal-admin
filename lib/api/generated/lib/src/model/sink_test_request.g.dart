// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SinkTestRequest extends SinkTestRequest {
  @override
  final String? kind;
  @override
  final int? timeoutSeconds;

  factory _$SinkTestRequest([void Function(SinkTestRequestBuilder)? updates]) =>
      (SinkTestRequestBuilder()..update(updates))._build();

  _$SinkTestRequest._({this.kind, this.timeoutSeconds}) : super._();
  @override
  SinkTestRequest rebuild(void Function(SinkTestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkTestRequestBuilder toBuilder() => SinkTestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkTestRequest &&
        kind == other.kind &&
        timeoutSeconds == other.timeoutSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, timeoutSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkTestRequest')
          ..add('kind', kind)
          ..add('timeoutSeconds', timeoutSeconds))
        .toString();
  }
}

class SinkTestRequestBuilder
    implements Builder<SinkTestRequest, SinkTestRequestBuilder> {
  _$SinkTestRequest? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _timeoutSeconds;
  int? get timeoutSeconds => _$this._timeoutSeconds;
  set timeoutSeconds(int? timeoutSeconds) =>
      _$this._timeoutSeconds = timeoutSeconds;

  SinkTestRequestBuilder() {
    SinkTestRequest._defaults(this);
  }

  SinkTestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _timeoutSeconds = $v.timeoutSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkTestRequest other) {
    _$v = other as _$SinkTestRequest;
  }

  @override
  void update(void Function(SinkTestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkTestRequest build() => _build();

  _$SinkTestRequest _build() {
    final _$result =
        _$v ?? _$SinkTestRequest._(kind: kind, timeoutSeconds: timeoutSeconds);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
